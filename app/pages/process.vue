<template>
  <div>
    <!-- Process Hero -->
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
            🔄 Процесс разработки
          </span>
        </div>
        <h1 class="text-5xl lg:text-7xl font-bold mb-8 leading-tight">
          <span class="bg-gradient-to-r from-white to-blue-100 bg-clip-text text-transparent">
            Полный цикл
          </span>
          <br>
          <span class="bg-gradient-to-r from-blue-100 to-purple-100 bg-clip-text text-transparent">
            разработки
          </span>
        </h1>
        <p class="text-xl lg:text-2xl text-white/90 mb-8 max-w-4xl mx-auto leading-relaxed font-light">
          От идеи до готового продукта: детальное описание каждого этапа нашей работы
        </p>
      </div>
    </section>

    <!-- Detailed Process Steps -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Этапы разработки</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Подробное описание каждого шага от начала до завершения проекта</p>
        </div>
        
        <!-- Step 1: Discovery & Analysis -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-2 gap-16 items-center">
            <div class="order-2 lg:order-1">
              <div class="bg-white rounded-3xl p-10 shadow-xl border border-gray-200">
                <div class="flex items-center mb-8">
                  <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="text-sm text-blue-600 font-bold mb-2">ЭТАП 1</div>
                    <h3 class="text-3xl font-bold text-gray-900">Анализ и планирование</h3>
                  </div>
                </div>
                <div class="space-y-6">
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Что мы делаем:</h4>
                    <ul class="space-y-3 text-gray-600">
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                        <span>Проводим интервью с заказчиком и ключевыми пользователями</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                        <span>Анализируем текущие бизнес-процессы и системы</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                        <span>Определяем функциональные и нефункциональные требования</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                        <span>Создаем техническое задание и план проекта</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Результат:</h4>
                    <p class="text-gray-600">Детальное техническое задание, план проекта с временными рамками и бюджетом</p>
                  </div>
                  <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                    <div class="text-blue-600 font-bold text-lg">Длительность: 1-2 недели</div>
                    <div class="text-sm text-gray-500">Стоимость включена в общую цену проекта</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="order-1 lg:order-2">
              <div class="relative">
                <div class="bg-gradient-to-br from-blue-100 to-purple-100 rounded-3xl p-8 text-center">
                  <div class="text-6xl mb-4">📊</div>
                  <h4 class="text-2xl font-bold text-gray-900 mb-4">Глубокий анализ</h4>
                  <p class="text-gray-600">Изучаем ваш бизнес, чтобы создать максимально эффективное решение</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Step 2: Design & Architecture -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-2 gap-16 items-center">
            <div>
              <div class="relative">
                <div class="bg-gradient-to-br from-green-100 to-blue-100 rounded-3xl p-8 text-center">
                  <div class="text-6xl mb-4">🎨</div>
                  <h4 class="text-2xl font-bold text-gray-900 mb-4">Проектирование</h4>
                  <p class="text-gray-600">Создаем архитектуру и дизайн, который будет работать долгие годы</p>
                </div>
              </div>
            </div>
            <div>
              <div class="bg-white rounded-3xl p-10 shadow-xl border border-gray-200">
                <div class="flex items-center mb-8">
                  <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h4a2 2 0 002-2V9a2 2 0 00-2-2H7a2 2 0 00-2 2v6a2 2 0 002 2z"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="text-sm text-green-600 font-bold mb-2">ЭТАП 2</div>
                    <h3 class="text-3xl font-bold text-gray-900">Проектирование и архитектура</h3>
                  </div>
                </div>
                <div class="space-y-6">
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Что мы делаем:</h4>
                    <ul class="space-y-3 text-gray-600">
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                        <span>Разрабатываем системную архитектуру и выбираем технологический стек</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                        <span>Создаем архитектурные диаграммы и схемы взаимодействия</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                        <span>Проектируем wireframes и прототипы интерфейсов</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                        <span>Проектируем базу данных, API и микросервисы</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                        <span>Планируем DevOps процессы и облачную инфраструктуру</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Результат:</h4>
                    <p class="text-gray-600">Архитектурная документация, диаграммы системы, прототипы интерфейсов, схемы API и баз данных, план инфраструктуры</p>
                  </div>
                  <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                    <div class="text-green-600 font-bold text-lg">Длительность: 1-3 недели</div>
                    <div class="text-sm text-gray-500">15-25% от стоимости проекта</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Step 3: Development -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-2 gap-16 items-center">
            <div class="order-2 lg:order-1">
              <div class="bg-white rounded-3xl p-10 shadow-xl border border-gray-200">
                <div class="flex items-center mb-8">
                  <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="text-sm text-purple-600 font-bold mb-2">ЭТАП 3</div>
                    <h3 class="text-3xl font-bold text-gray-900">Разработка</h3>
                  </div>
                </div>
                <div class="space-y-6">
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Что мы делаем:</h4>
                    <ul class="space-y-3 text-gray-600">
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                        <span>Разрабатываем backend и API согласно архитектуре</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                        <span>Создаем пользовательский интерфейс</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                        <span>Интегрируем с внешними системами и сервисами</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                        <span>Проводим unit и integration тестирование</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                        <span>Еженедельные демонстрации прогресса</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Результат:</h4>
                    <p class="text-gray-600">Готовое к развертыванию приложение с полным функционалом</p>
                  </div>
                  <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                    <div class="text-purple-600 font-bold text-lg">Длительность: 2-8 недель</div>
                    <div class="text-sm text-gray-500">60-70% от стоимости проекта</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="order-1 lg:order-2">
              <div class="relative">
                <div class="bg-gradient-to-br from-purple-100 to-pink-100 rounded-3xl p-8 text-center">
                  <div class="text-6xl mb-4">💻</div>
                  <h4 class="text-2xl font-bold text-gray-900 mb-4">Разработка</h4>
                  <p class="text-gray-600">Пишем чистый, масштабируемый код с использованием лучших практик</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Step 4: Testing & QA -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-2 gap-16 items-center">
            <div>
              <div class="relative">
                <div class="bg-gradient-to-br from-orange-100 to-red-100 rounded-3xl p-8 text-center">
                  <div class="text-6xl mb-4">🧪</div>
                  <h4 class="text-2xl font-bold text-gray-900 mb-4">Тестирование</h4>
                  <p class="text-gray-600">Тщательно проверяем каждую функцию для обеспечения качества</p>
                </div>
              </div>
            </div>
            <div>
              <div class="bg-white rounded-3xl p-10 shadow-xl border border-gray-200">
                <div class="flex items-center mb-8">
                  <div class="w-16 h-16 bg-gradient-to-br from-orange-500 to-red-500 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="text-sm text-orange-600 font-bold mb-2">ЭТАП 4</div>
                    <h3 class="text-3xl font-bold text-gray-900">Тестирование и QA</h3>
                  </div>
                </div>
                <div class="space-y-6">
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Что мы делаем:</h4>
                    <ul class="space-y-3 text-gray-600">
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-orange-500 rounded-full mr-3 mt-2"></div>
                        <span>Функциональное тестирование всех возможностей</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-orange-500 rounded-full mr-3 mt-2"></div>
                        <span>Тестирование производительности и нагрузки</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-orange-500 rounded-full mr-3 mt-2"></div>
                        <span>Проверка безопасности и уязвимостей</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-orange-500 rounded-full mr-3 mt-2"></div>
                        <span>Тестирование на различных устройствах и браузерах</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Результат:</h4>
                    <p class="text-gray-600">Полностью протестированное и отлаженное приложение</p>
                  </div>
                  <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                    <div class="text-orange-600 font-bold text-lg">Длительность: 1-2 недели</div>
                    <div class="text-sm text-gray-500">Включено в стоимость разработки</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Step 5: Deployment & Launch -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-2 gap-16 items-center">
            <div class="order-2 lg:order-1">
              <div class="bg-white rounded-3xl p-10 shadow-xl border border-gray-200">
                <div class="flex items-center mb-8">
                  <div class="w-16 h-16 bg-gradient-to-br from-pink-500 to-pink-600 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
                    </svg>
                  </div>
                  <div>
                    <div class="text-sm text-pink-600 font-bold mb-2">ЭТАП 5</div>
                    <h3 class="text-3xl font-bold text-gray-900">Запуск и развертывание</h3>
                  </div>
                </div>
                <div class="space-y-6">
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Что мы делаем:</h4>
                    <ul class="space-y-3 text-gray-600">
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-pink-500 rounded-full mr-3 mt-2"></div>
                        <span>Настраиваем продакшн инфраструктуру</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-pink-500 rounded-full mr-3 mt-2"></div>
                        <span>Развертываем приложение с нулевым простоем</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-pink-500 rounded-full mr-3 mt-2"></div>
                        <span>Настраиваем мониторинг и логирование</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-pink-500 rounded-full mr-3 mt-2"></div>
                        <span>Обучаем команду заказчика</span>
                      </li>
                      <li class="flex items-start">
                        <div class="w-2 h-2 bg-pink-500 rounded-full mr-3 mt-2"></div>
                        <span>Передаем документацию и код</span>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h4 class="text-xl font-bold text-gray-900 mb-3">Результат:</h4>
                    <p class="text-gray-600">Работающее в продакшн приложение с полной документацией</p>
                  </div>
                  <div class="flex items-center justify-between pt-4 border-t border-gray-200">
                    <div class="text-pink-600 font-bold text-lg">Длительность: 1 неделя</div>
                    <div class="text-sm text-gray-500">5-10% от стоимости проекта</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="order-1 lg:order-2">
              <div class="relative">
                <div class="bg-gradient-to-br from-pink-100 to-purple-100 rounded-3xl p-8 text-center">
                  <div class="text-6xl mb-4">🚀</div>
                  <h4 class="text-2xl font-bold text-gray-900 mb-4">Запуск</h4>
                  <p class="text-gray-600">Выводим ваш проект в продакшн и обеспечиваем надежную работу</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Architecture Section -->
    <section class="py-20 lg:py-32 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Архитектурные решения</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Проектируем масштабируемые и надежные архитектуры для долгосрочного успеха</p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-12 mb-20">
          <!-- Architecture Principles -->
          <div>
            <h3 class="text-3xl font-bold text-gray-900 mb-8">Принципы архитектуры</h3>
            <div class="space-y-6">
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Модульность</h4>
                  <p class="text-gray-600">Разделяем систему на независимые модули для упрощения разработки и поддержки</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Масштабируемость</h4>
                  <p class="text-gray-600">Проектируем с учетом роста нагрузки и количества пользователей</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Безопасность</h4>
                  <p class="text-gray-600">Встраиваем защиту на всех уровнях архитектуры</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-pink-500 to-pink-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Отказоустойчивость</h4>
                  <p class="text-gray-600">Обеспечиваем стабильную работу даже при сбоях отдельных компонентов</p>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Architecture Patterns -->
          <div>
            <h3 class="text-3xl font-bold text-gray-900 mb-8">Архитектурные паттерны</h3>
            <div class="space-y-6">
              <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl p-6">
                <h4 class="text-xl font-bold text-gray-900 mb-3">Микросервисная архитектура</h4>
                <p class="text-gray-600 mb-4">Разделение приложения на независимые сервисы для гибкости и масштабируемости</p>
                <ul class="text-sm text-gray-600 space-y-1">
                  <li>• Независимое развертывание сервисов</li>
                  <li>• Технологическое разнообразие</li>
                  <li>• Горизонтальное масштабирование</li>
                </ul>
              </div>
              
              <div class="bg-gradient-to-br from-green-50 to-teal-50 rounded-2xl p-6">
                <h4 class="text-xl font-bold text-gray-900 mb-3">Event-Driven Architecture</h4>
                <p class="text-gray-600 mb-4">Асинхронное взаимодействие через события для повышения производительности</p>
                <ul class="text-sm text-gray-600 space-y-1">
                  <li>• Слабая связанность компонентов</li>
                  <li>• Высокая производительность</li>
                  <li>• Реактивность системы</li>
                </ul>
              </div>
              
              <div class="bg-gradient-to-br from-purple-50 to-pink-50 rounded-2xl p-6">
                <h4 class="text-xl font-bold text-gray-900 mb-3">Clean Architecture</h4>
                <p class="text-gray-600 mb-4">Слоистая архитектура с четким разделением ответственности</p>
                <ul class="text-sm text-gray-600 space-y-1">
                  <li>• Независимость от фреймворков</li>
                  <li>• Тестируемость кода</li>
                  <li>• Гибкость к изменениям</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Technology Stack -->
        <div class="bg-gradient-to-br from-gray-50 to-blue-50 rounded-3xl p-12">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">Технологический стек</h3>
            <p class="text-xl text-gray-600">Выбираем оптимальные технологии под конкретные задачи проекта</p>
          </div>
          
          <div class="grid md:grid-cols-2 lg:grid-cols-5 gap-8">
            <!-- Frontend -->
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Frontend</h4>
              <ul class="text-gray-600 text-sm space-y-2">
                <li>React / Vue.js / Angular</li>
                <li>Next.js / Nuxt.js</li>
                <li>TypeScript</li>
                <li>Tailwind CSS</li>
              </ul>
            </div>
            
            <!-- Backend -->
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Backend</h4>
              <ul class="text-gray-600 text-sm space-y-2">
                <li>Node.js / Python / Go</li>
                <li>Express / FastAPI / Gin</li>
                <li>GraphQL / REST API</li>
                <li>Microservices</li>
              </ul>
            </div>
            
            <!-- Database -->
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Базы данных</h4>
              <ul class="text-gray-600 text-sm space-y-2">
                <li>PostgreSQL / MySQL</li>
                <li>MongoDB / Redis</li>
                <li>ClickHouse</li>
                <li>Elasticsearch</li>
              </ul>
            </div>
            
            <!-- Infrastructure -->
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-pink-500 to-pink-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Инфраструктура</h4>
              <ul class="text-gray-600 text-sm space-y-2">
                <li>AWS / Azure / GCP</li>
                <li>Yandex Cloud / VK Cloud</li>
                <li>Docker / Kubernetes</li>
                <li>Terraform / Ansible</li>
              </ul>
            </div>
            
            <!-- Data & AI -->
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-orange-500 to-red-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Data & AI</h4>
              <ul class="text-gray-600 text-sm space-y-2">
                <li>Python / R / Scala</li>
                <li>Apache Spark / Kafka</li>
                <li>TensorFlow / PyTorch</li>
                <li>OpenAI / Hugging Face</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Methodologies Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Методологии разработки</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Мы используем проверенные подходы для обеспечения качества и эффективности</p>
        </div>
        
        <div class="grid md:grid-cols-2 gap-12">
          <!-- Agile -->
          <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-3xl p-10">
            <div class="flex items-center mb-8">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-indigo-500 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900">Agile / Scrum</h3>
            </div>
            <p class="text-gray-600 mb-6 text-lg leading-relaxed">
              Итеративная разработка с короткими спринтами, регулярными демонстрациями и быстрой адаптацией к изменениям.
            </p>
            <ul class="space-y-3 text-gray-600">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Спринты по 1-2 недели</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Еженедельные демонстрации</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Быстрая реакция на изменения</span>
              </li>
            </ul>
          </div>

          <!-- DevOps -->
          <div class="bg-gradient-to-br from-green-50 to-teal-50 rounded-3xl p-10">
            <div class="flex items-center mb-8">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-teal-500 rounded-2xl flex items-center justify-center mr-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900">DevOps</h3>
            </div>
            <p class="text-gray-600 mb-6 text-lg leading-relaxed">
              Автоматизация процессов разработки, тестирования и развертывания для ускорения доставки и повышения качества.
            </p>
            <ul class="space-y-3 text-gray-600">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>CI/CD пайплайны</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>Автоматическое тестирование</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>Мониторинг и алерты</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Quality Assurance -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Гарантии качества</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Как мы обеспечиваем высокое качество на каждом этапе</p>
        </div>
        
        <div class="grid lg:grid-cols-3 gap-8">
          <!-- Code Quality -->
          <div class="bg-white rounded-3xl p-8 shadow-xl border border-gray-200 text-center">
            <div class="w-20 h-20 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-4">Качество кода</h3>
            <ul class="text-gray-600 text-left space-y-3">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Code review каждого изменения</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Соблюдение coding standards</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Автоматическая проверка качества</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                <span>Рефакторинг и оптимизация</span>
              </li>
            </ul>
          </div>

          <!-- Testing -->
          <div class="bg-white rounded-3xl p-8 shadow-xl border border-gray-200 text-center">
            <div class="w-20 h-20 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-4">Тестирование</h3>
            <ul class="text-gray-600 text-left space-y-3">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>Unit тесты (покрытие >80%)</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>Integration тестирование</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>End-to-end тесты</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                <span>Performance тестирование</span>
              </li>
            </ul>
          </div>

          <!-- Security -->
          <div class="bg-white rounded-3xl p-8 shadow-xl border border-gray-200 text-center">
            <div class="w-20 h-20 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-4">Безопасность</h3>
            <ul class="text-gray-600 text-left space-y-3">
              <li class="flex items-start">
                <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                <span>Security audit кода</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                <span>Проверка уязвимостей</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                <span>Шифрование данных</span>
              </li>
              <li class="flex items-start">
                <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                <span>Соблюдение GDPR/CCPA</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Support & Maintenance -->
    <section class="py-20 lg:py-32 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Поддержка после запуска</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Мы не просто сдаем проект, а обеспечиваем его долгосрочную работу</p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-12">
          <div>
            <h3 class="text-3xl font-bold text-gray-900 mb-8">Что входит в поддержку:</h3>
            <div class="space-y-6">
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192L5.636 18.364M12 12h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Техническая поддержка 24/7</h4>
                  <p class="text-gray-600">Быстрое реагирование на критические проблемы и вопросы</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Регулярные обновления</h4>
                  <p class="text-gray-600">Обновление зависимостей, исправление багов, улучшения безопасности</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Мониторинг и аналитика</h4>
                  <p class="text-gray-600">Отслеживание производительности, ошибок и пользовательского поведения</p>
                </div>
              </div>
              
              <div class="flex items-start">
                <div class="w-12 h-12 bg-gradient-to-br from-pink-500 to-pink-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 100 4m0-4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 100 4m0-4v2m0-6V4"></path>
                  </svg>
                </div>
                <div>
                  <h4 class="text-xl font-bold text-gray-900 mb-2">Консультации по развитию</h4>
                  <p class="text-gray-600">Рекомендации по масштабированию и добавлению новых функций</p>
                </div>
              </div>
            </div>
          </div>
          
          <div>
            <div class="bg-gradient-to-br from-blue-50 to-purple-50 rounded-3xl p-10">
              <h3 class="text-3xl font-bold text-gray-900 mb-8">Планы поддержки</h3>
              <div class="space-y-6">
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center justify-between mb-4">
                    <h4 class="text-xl font-bold text-gray-900">Базовый</h4>
                    <div class="text-2xl font-bold text-blue-600">от 15,000 ₽/мес</div>
                  </div>
                  <ul class="space-y-2 text-gray-600">
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Техническая поддержка в рабочее время
                    </li>
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Исправление критических багов
                    </li>
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Базовый мониторинг
                    </li>
                  </ul>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border-2 border-purple-500">
                  <div class="flex items-center justify-between mb-4">
                    <h4 class="text-xl font-bold text-gray-900">Премиум</h4>
                    <div class="text-2xl font-bold text-purple-600">от 35,000 ₽/мес</div>
                  </div>
                  <ul class="space-y-2 text-gray-600">
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Поддержка 24/7
                    </li>
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Проактивный мониторинг
                    </li>
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Регулярные обновления
                    </li>
                    <li class="flex items-center">
                      <svg class="w-5 h-5 text-green-500 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                      </svg>
                      Консультации по развитию
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-blue-600 via-purple-600 to-indigo-700 relative overflow-hidden">
      <!-- Background pattern -->
      <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 1px 1px, rgba(255,255,255,0.1) 1px, transparent 0); background-size: 60px 60px;"></div>
      
      <!-- Floating elements -->
      <div class="absolute inset-0 overflow-hidden">
        <div class="absolute top-10 left-20 w-20 h-20 bg-white/10 rounded-full blur-2xl animate-pulse"></div>
        <div class="absolute bottom-10 right-20 w-16 h-16 bg-purple-400/20 rounded-full blur-xl animate-bounce"></div>
      </div>

      <div class="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <div class="bg-white/10 backdrop-blur-xl rounded-3xl p-12 border border-white/20 shadow-2xl">
          <h2 class="text-4xl lg:text-5xl font-bold text-white mb-8">Готовы начать проект?</h2>
          <p class="text-xl text-white/90 mb-10 max-w-3xl mx-auto">
            Обсудим ваши задачи и составим план реализации с учетом всех этапов разработки
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-white text-blue-600 rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-white/20">
              Обсудить проект
              <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
              </svg>
            </NuxtLink>
            <NuxtLink to="/services" class="inline-flex items-center px-10 py-5 border-2 border-white/30 text-white rounded-2xl font-bold text-xl transition-all duration-300 hover:bg-white/10 hover:border-white/50 backdrop-blur-sm">
              Посмотреть услуги
            </NuxtLink>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
definePageMeta({
  title: 'Процесс разработки - TechBit'
})
</script>
