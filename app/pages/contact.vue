<template>
  <div>
    <!-- Contact Hero -->
    <section class="relative py-20 lg:py-32 overflow-hidden">
      <!-- Background with gradient -->
      <div class="absolute inset-0 bg-gradient-to-br from-blue-600 via-purple-600 to-indigo-700">
        <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 1px 1px, rgba(255,255,255,0.1) 1px, transparent 0); background-size: 60px 60px;"></div>
      </div>
      
      <!-- Floating elements -->
      <div class="absolute inset-0 overflow-hidden">
        <div class="absolute top-20 left-10 w-32 h-32 bg-white/10 rounded-full blur-3xl animate-pulse"></div>
        <div class="absolute top-40 right-20 w-24 h-24 bg-purple-400/20 rounded-full blur-2xl animate-bounce"></div>
        <div class="absolute bottom-20 left-1/3 w-40 h-40 bg-blue-400/15 rounded-full blur-3xl animate-pulse"></div>
      </div>

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <div class="mb-6">
          <span class="inline-flex items-center px-6 py-3 rounded-full text-sm font-bold bg-white/20 backdrop-blur-sm text-white border border-white/30 shadow-lg">
            📞 Свяжитесь с нами
          </span>
        </div>
        <h1 class="text-5xl lg:text-7xl font-bold mb-8 leading-tight">
          <span class="bg-gradient-to-r from-white to-blue-100 bg-clip-text text-transparent">
            Готовы начать
          </span>
          <br>
          <span class="bg-gradient-to-r from-blue-100 to-purple-100 bg-clip-text text-transparent">
            проект?
          </span>
        </h1>
        <p class="text-xl lg:text-2xl text-white/90 mb-8 max-w-4xl mx-auto leading-relaxed font-light">
          Оставьте заявку, и мы свяжемся с вами в течение 24 часов для обсуждения деталей вашего проекта
        </p>
      </div>
    </section>

    <!-- Contact Form Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-16">
          <!-- Contact Form -->
          <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-16 translate-x-16"></div>
            <div class="absolute bottom-0 left-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full translate-y-12 -translate-x-12"></div>
            <div class="relative z-10">
              <h2 class="text-3xl font-bold text-gray-900 mb-8">Отправить заявку</h2>
              <form @submit.prevent="submitForm" class="space-y-6">
                <div>
                  <label for="name" class="block text-sm font-medium text-gray-700 mb-3">Имя *</label>
                  <input
                    id="name"
                    v-model="form.name"
                    type="text"
                    required
                    class="w-full px-6 py-4 bg-gray-50 border border-gray-300 rounded-xl text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-lg"
                    placeholder="Ваше имя"
                  />
                </div>
                
                <div>
                  <label for="email" class="block text-sm font-medium text-gray-700 mb-3">Email *</label>
                  <input
                    id="email"
                    v-model="form.email"
                    type="email"
                    required
                    class="w-full px-6 py-4 bg-gray-50 border border-gray-300 rounded-xl text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-lg"
                    placeholder="your@email.com"
                  />
                </div>
                
                <div>
                  <label for="company" class="block text-sm font-medium text-gray-700 mb-3">Компания</label>
                  <input
                    id="company"
                    v-model="form.company"
                    type="text"
                    class="w-full px-6 py-4 bg-gray-50 border border-gray-300 rounded-xl text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-lg"
                    placeholder="Название компании"
                  />
                </div>
                
                <div>
                  <label for="service" class="block text-sm font-medium text-gray-700 mb-3">Услуга *</label>
                  <select
                    id="service"
                    v-model="form.service"
                    required
                    class="w-full px-6 py-4 bg-gray-50 border border-gray-300 rounded-xl text-gray-900 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 text-lg"
                  >
                    <option value="">Выберите услугу</option>
                    <option value="automation">Автоматизация процессов</option>
                    <option value="devops">DevOps практики</option>
                    <option value="web-development">Веб-разработка</option>
                    <option value="consulting">IT консалтинг</option>
                  </select>
                </div>
                
                <div>
                  <label for="message" class="block text-sm font-medium text-gray-700 mb-3">Описание проекта *</label>
                  <textarea
                    id="message"
                    v-model="form.message"
                    rows="5"
                    required
                    class="w-full px-6 py-4 bg-gray-50 border border-gray-300 rounded-xl text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all duration-200 resize-none text-lg"
                    placeholder="Опишите ваш проект, цели и требования..."
                  ></textarea>
                </div>
                
                <!-- Success/Error Messages -->
                <div v-if="submitStatus" class="mb-6">
                  <div v-if="submitStatus === 'success'" class="p-4 bg-green-50 border border-green-200 rounded-xl">
                    <div class="flex items-start">
                      <svg class="w-6 h-6 text-green-600 mt-0.5 mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                      </svg>
                      <div>
                        <h3 class="text-sm font-medium text-green-800">Заявка отправлена!</h3>
                        <p class="text-sm text-green-700 mt-1">{{ submitMessage }}</p>
                      </div>
                    </div>
                  </div>
                  
                  <div v-if="submitStatus === 'error'" class="p-4 bg-red-50 border border-red-200 rounded-xl">
                    <div class="flex items-start">
                      <svg class="w-6 h-6 text-red-600 mt-0.5 mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                      </svg>
                      <div>
                        <h3 class="text-sm font-medium text-red-800">Ошибка отправки</h3>
                        <p class="text-sm text-red-700 mt-1">{{ submitMessage }}</p>
                      </div>
                    </div>
                  </div>
                </div>

                <button
                  type="submit"
                  :disabled="isSubmitting"
                  class="w-full px-8 py-5 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  <span v-if="!isSubmitting">Отправить заявку</span>
                  <span v-else class="flex items-center justify-center">
                    <svg class="animate-spin -ml-1 mr-3 h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                      <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                      <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                    </svg>
                    Отправляем...
                  </span>
                </button>
              </form>
            </div>
          </div>

          <!-- Contact Info -->
          <div class="space-y-10">
            <div>
              <h2 class="text-3xl font-bold text-gray-900 mb-6">Контактная информация</h2>
              <p class="text-xl text-gray-600 mb-8 leading-relaxed">
                Готовы обсудить ваш проект? Свяжитесь с нами любым удобным способом. 
                Мы ответим в течение 24 часов.
              </p>
            </div>

            <div class="space-y-8">
              <!-- Email -->
              <div class="flex items-start group">
                <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mr-6 flex-shrink-0 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </div>
                <div>
                  <h3 class="text-xl font-semibold text-gray-900 mb-2">Email</h3>
                  <p class="text-gray-600 text-lg">info@techbit.su</p>
                  <p class="text-gray-500 text-base">Ответим в течение 2-4 часов</p>
                </div>
              </div>

              <!-- Phone -->
              <div class="flex items-start group">
                <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mr-6 flex-shrink-0 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                  </svg>
                </div>
                <div>
                  <h3 class="text-xl font-semibold text-gray-900 mb-2">Телефон</h3>
                  <p class="text-gray-600 text-lg">+7 (910) 537-39-05</p>
                  <p class="text-gray-500 text-base">Пн-Пт: 9:00 - 21:00</p>
                </div>
              </div>

              <!-- Address -->
              <div class="flex items-start group">
                <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mr-6 flex-shrink-0 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                  </svg>
                </div>
                <div>
                  <h3 class="text-xl font-semibold text-gray-900 mb-2">Адрес</h3>
                  <p class="text-gray-600 text-lg">г. Москва, вн.тер.г. Муниципальный округ Останкинский, ул. Годовикова, д. 9</p>
                  <p class="text-gray-500 text-base">Бизнес-центр "Тверской"</p>
                </div>
              </div>
            </div>

            <!-- Social Links -->
            <div>
              <h3 class="text-xl font-semibold text-gray-900 mb-6">Мы в соцсетях</h3>
              <div class="flex space-x-4">
                <a href="#" class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center hover:scale-110 transition-all duration-300 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
                  </svg>
                </a>
                <a href="#" class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center hover:scale-110 transition-all duration-300 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z"/>
                  </svg>
                </a>
                <a href="#" class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center hover:scale-110 transition-all duration-300 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- FAQ Section -->
    <section class="py-20 lg:py-32 relative overflow-hidden">
      <!-- Background pattern -->
      <div class="absolute inset-0 bg-gradient-to-br from-indigo-50 to-purple-50">
        <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 20px 20px, rgba(156, 146, 172, 0.1) 2px, transparent 0); background-size: 40px 40px;"></div>
      </div>

      <div class="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Часто задаваемые вопросы</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Ответы на популярные вопросы о наших услугах</p>
        </div>
        
        <div class="space-y-8">
          <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
            <div class="absolute top-0 right-0 w-24 h-24 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-12 translate-x-12"></div>
            <div class="relative z-10">
              <h3 class="text-2xl font-bold text-gray-900 mb-4">Сколько времени занимает разработка проекта?</h3>
              <p class="text-gray-600 text-lg">Время разработки зависит от сложности проекта. Небольшие проекты занимают 2-4 недели, крупные - от 2 до 6 месяцев. Мы всегда предоставляем детальный план с временными рамками.</p>
            </div>
          </div>
          
          <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
            <div class="absolute top-0 right-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full -translate-y-12 translate-x-12"></div>
            <div class="relative z-10">
              <h3 class="text-2xl font-bold text-gray-900 mb-4">Предоставляете ли вы техническую поддержку после запуска?</h3>
              <p class="text-gray-600 text-lg">Да, мы предлагаем различные варианты поддержки: от базового обслуживания до полного сопровождения 24/7. Все зависит от ваших потребностей и бюджета.</p>
            </div>
          </div>
          
          <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
            <div class="absolute top-0 right-0 w-24 h-24 bg-gradient-to-br from-purple-500/10 to-pink-500/10 rounded-full -translate-y-12 translate-x-12"></div>
            <div class="relative z-10">
              <h3 class="text-2xl font-bold text-gray-900 mb-4">Работаете ли вы с зарубежными клиентами?</h3>
              <p class="text-gray-600 text-lg">Конечно! Мы работаем с клиентами по всему миру. У нас есть опыт международных проектов и мы можем адаптироваться к различным часовым поясам.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
definePageMeta({
  title: 'Контакты - TechBit'
})

// Form data
const form = ref({
  name: '',
  email: '',
  company: '',
  service: '',
  message: ''
})

const isSubmitting = ref(false)
const submitStatus = ref(null) // 'success', 'error', null
const submitMessage = ref('')

// Form submission
const submitForm = async () => {
  isSubmitting.value = true
  submitStatus.value = null
  
  try {
    const data = await $fetch('/api/contact', {
      method: 'POST',
      body: form.value
    })
    
    // Reset form on success
    form.value = {
      name: '',
      email: '',
      company: '',
      service: '',
      message: ''
    }
    
    submitStatus.value = 'success'
    submitMessage.value = data.message || 'Спасибо! Ваша заявка отправлена. Мы свяжемся с вами в течение 24 часов.'
    
  } catch (error) {
    console.error('Ошибка отправки формы:', error)
    submitStatus.value = 'error'
    submitMessage.value = error.data?.message || 'Произошла ошибка при отправке заявки. Попробуйте позже или свяжитесь с нами по телефону.'
  } finally {
    isSubmitting.value = false
    
    // Автоматически скрыть уведомление через 5 секунд
    setTimeout(() => {
      submitStatus.value = null
      submitMessage.value = ''
    }, 5000)
  }
}
</script>
