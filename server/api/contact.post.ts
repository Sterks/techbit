import nodemailer from 'nodemailer'

export default defineEventHandler(async (event) => {
  try {
    const body = await readBody(event)
    
    // Проверка переменных окружения (только для продакшена или когда тестовый режим отключен)
    const isTestMode = process.env.NODE_ENV === 'development' && process.env.EMAIL_TEST_MODE === 'true'
    
    if (!isTestMode) {
      const requiredEnvVars = ['SMTP_HOST', 'SMTP_PORT', 'SMTP_USER', 'SMTP_PASS', 'ADMIN_EMAIL']
      const missingVars = requiredEnvVars.filter(varName => !process.env[varName])
      
      if (missingVars.length > 0) {
        console.error('Отсутствуют переменные окружения:', missingVars)
        throw createError({
          statusCode: 500,
          statusMessage: `Сервер не настроен. Отсутствуют переменные: ${missingVars.join(', ')}`
        })
      }
    } else {
      // В тестовом режиме нужен только ADMIN_EMAIL
      if (!process.env.ADMIN_EMAIL) {
        console.error('В тестовом режиме нужен ADMIN_EMAIL')
        throw createError({
          statusCode: 500,
          statusMessage: 'Не указан ADMIN_EMAIL для тестового режима'
        })
      }
    }
    
    // Валидация данных
    const { name, email, company, service, message } = body
    
    if (!name || !email || !service || !message) {
      throw createError({
        statusCode: 400,
        statusMessage: 'Все обязательные поля должны быть заполнены'
      })
    }

    // Валидация email
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    if (!emailRegex.test(email)) {
      throw createError({
        statusCode: 400,
        statusMessage: 'Некорректный email адрес'
      })
    }

    // Настройка транспорта для отправки почты
    let transporter
    if (isTestMode) {
      // Тестовый режим - создаем тестовый аккаунт
      const testAccount = await nodemailer.createTestAccount()
      transporter = nodemailer.createTransport({
        host: 'smtp.ethereal.email',
        port: 587,
        secure: false,
        auth: {
          user: testAccount.user,
          pass: testAccount.pass,
        },
      })
      console.log('🧪 EMAIL TEST MODE: Письма не будут отправлены реально')
    } else {
      transporter = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: parseInt(process.env.SMTP_PORT || '587'),
        secure: process.env.SMTP_SECURE === 'true',
        auth: {
          user: process.env.SMTP_USER,
          pass: process.env.SMTP_PASS
        },
        connectionTimeout: 10000, // 10 секунд
        greetingTimeout: 10000,   // 10 секунд
        socketTimeout: 10000      // 10 секунд
      })
      
      // Проверяем подключение
      console.log('🔍 Проверяем подключение к Gmail SMTP...')
      try {
        await transporter.verify()
        console.log('✅ SMTP подключение успешно!')
      } catch (verifyError) {
        const errorMessage = verifyError instanceof Error ? verifyError.message : String(verifyError)
        console.error('❌ Ошибка SMTP подключения:', errorMessage)
        throw createError({
          statusCode: 500,
          statusMessage: `Ошибка подключения к почтовому серверу: ${errorMessage}`
        })
      }
    }

    // Определение названия услуги
    const serviceNames: Record<string, string> = {
      'automation': 'Автоматизация процессов',
      'devops': 'DevOps практики',
      'web-development': 'Веб-разработка',
      'consulting': 'IT консалтинг'
    }

    const serviceName = serviceNames[service] || service

    // Формирование письма для администратора
    const adminMailOptions = {
      from: process.env.SMTP_FROM,
      to: process.env.ADMIN_EMAIL,
      subject: `Новая заявка с сайта TechBit - ${serviceName}`,
      html: `
        <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
          <h2 style="color: #2563eb; border-bottom: 2px solid #e5e7eb; padding-bottom: 10px;">
            Новая заявка с сайта TechBit
          </h2>
          
          <div style="background: #f9fafb; padding: 20px; border-radius: 8px; margin: 20px 0;">
            <h3 style="color: #374151; margin-top: 0;">Информация о клиенте:</h3>
            <p><strong>Имя:</strong> ${name}</p>
            <p><strong>Email:</strong> <a href="mailto:${email}">${email}</a></p>
            ${company ? `<p><strong>Компания:</strong> ${company}</p>` : ''}
            <p><strong>Услуга:</strong> ${serviceName}</p>
          </div>
          
          <div style="background: #fff; padding: 20px; border: 1px solid #e5e7eb; border-radius: 8px;">
            <h3 style="color: #374151; margin-top: 0;">Описание проекта:</h3>
            <p style="white-space: pre-wrap; line-height: 1.6;">${message}</p>
          </div>
          
          <div style="margin-top: 20px; padding: 15px; background: #dbeafe; border-radius: 8px;">
            <p style="margin: 0; color: #1e40af;">
              <strong>💡 Совет:</strong> Рекомендуется ответить клиенту в течение 2-4 часов для лучшего впечатления.
            </p>
          </div>
        </div>
      `
    }

    // Формирование письма для клиента (автоответ)
    const clientMailOptions = {
      from: process.env.SMTP_FROM,
      to: email,
      subject: 'Спасибо за обращение в TechBit!',
      html: `
        <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
          <div style="background: linear-gradient(135deg, #2563eb, #7c3aed); color: white; padding: 30px; text-align: center; border-radius: 8px 8px 0 0;">
            <h1 style="margin: 0; font-size: 28px;">TechBit</h1>
            <p style="margin: 10px 0 0 0; opacity: 0.9;">IT решения для вашего бизнеса</p>
          </div>
          
          <div style="background: white; padding: 30px; border: 1px solid #e5e7eb; border-top: none; border-radius: 0 0 8px 8px;">
            <h2 style="color: #374151; margin-top: 0;">Здравствуйте, ${name}!</h2>
            
            <p style="color: #6b7280; line-height: 1.6;">
              Спасибо за ваше обращение! Мы получили вашу заявку на услугу "<strong>${serviceName}</strong>" 
              и обязательно свяжемся с вами в течение 24 часов.
            </p>
            
            <div style="background: #f3f4f6; padding: 20px; border-radius: 8px; margin: 20px 0;">
              <h3 style="color: #374151; margin-top: 0;">Что дальше?</h3>
              <ul style="color: #6b7280; line-height: 1.6;">
                <li>Наш менеджер изучит ваш запрос</li>
                <li>Мы свяжемся с вами для уточнения деталей</li>
                <li>Подготовим персональное предложение</li>
                <li>Обсудим сроки и стоимость проекта</li>
              </ul>
            </div>
            
            <div style="background: #dbeafe; padding: 20px; border-radius: 8px; margin: 20px 0;">
              <h3 style="color: #1e40af; margin-top: 0;">📞 Контакты для срочных вопросов:</h3>
              <p style="margin: 5px 0; color: #374151;"><strong>Email:</strong> info@techbit.su</p>
              <p style="margin: 5px 0; color: #374151;"><strong>Телефон:</strong> +7 (910) 537-39-05</p>
              <p style="margin: 5px 0; color: #6b7280;">Пн-Пт: 9:00 - 21:00</p>
            </div>
            
            <p style="color: #9ca3af; font-size: 14px; margin-top: 30px;">
              С уважением,<br>
              Команда TechBit
            </p>
          </div>
        </div>
      `
    }

    // Отправка писем
    const [adminResult, clientResult] = await Promise.all([
      transporter.sendMail(adminMailOptions),
      transporter.sendMail(clientMailOptions)
    ])

    if (isTestMode) {
      console.log('📧 Тестовые письма отправлены:')
      console.log('   Админу:', nodemailer.getTestMessageUrl(adminResult))
      console.log('   Клиенту:', nodemailer.getTestMessageUrl(clientResult))
    } else {
      console.log('✅ Письма успешно отправлены:', {
        admin: adminResult.messageId,
        client: clientResult.messageId
      })
    }

    return {
      success: true,
      message: 'Заявка успешно отправлена!'
    }

  } catch (error) {
    console.error('Ошибка отправки email:', error)
    
    throw createError({
      statusCode: 500,
      statusMessage: 'Ошибка отправки заявки. Попробуйте позже.'
    })
  }
})
