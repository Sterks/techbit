<template>
  <div>
    <!-- Services Hero -->
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
            🚀 Наши услуги
          </span>
        </div>
        <h1 class="text-5xl lg:text-7xl font-bold mb-8 leading-tight">
          <span class="bg-gradient-to-r from-white to-blue-100 bg-clip-text text-transparent">
            Профессиональные
          </span>
          <br>
          <span class="bg-gradient-to-r from-blue-100 to-purple-100 bg-clip-text text-transparent">
            IT решения
          </span>
        </h1>
        <p class="text-xl lg:text-2xl text-white/90 mb-8 max-w-4xl mx-auto leading-relaxed font-light">
          Комплексные услуги в области автоматизации, DevOps и веб-разработки для вашего бизнеса
        </p>
      </div>
    </section>

    <!-- Services Grid -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Что мы предлагаем</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Инновационные решения для цифрового бизнеса</p>
        </div>
        
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
          <!-- Automation Service -->
          <div class="group relative bg-white rounded-3xl p-10 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-blue-500/5 to-purple-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-20 h-20 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mb-8 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-6">Автоматизация процессов</h3>
              <p class="text-gray-600 leading-relaxed mb-8 text-lg">Оптимизируем рабочие процессы с помощью современных инструментов автоматизации и RPA</p>
              <ul class="text-gray-600 text-base space-y-3 mb-8">
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3"></div>
                  RPA и workflow автоматизация
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3"></div>
                  Интеграция систем
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3"></div>
                  Аналитика и отчетность
                </li>
              </ul>
              <div class="text-blue-600 font-bold text-2xl">От 500,000 ₽</div>
            </div>
          </div>

          <!-- DevOps Service -->
          <div class="group relative bg-white rounded-3xl p-10 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-green-500/5 to-blue-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-20 h-20 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mb-8 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-6">DevOps практики</h3>
              <p class="text-gray-600 leading-relaxed mb-8 text-lg">Внедряем CI/CD, мониторинг и инфраструктуру как код для быстрой доставки</p>
              <ul class="text-gray-600 text-base space-y-3 mb-8">
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3"></div>
                  CI/CD пайплайны
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3"></div>
                  Kubernetes и Docker
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3"></div>
                  Мониторинг и логирование
                </li>
              </ul>
              <div class="text-green-600 font-bold text-2xl">От 800,000 ₽</div>
            </div>
          </div>

          <!-- Web Development Service -->
          <div class="group relative bg-white rounded-3xl p-10 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-purple-500/5 to-pink-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-20 h-20 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mb-8 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-6">Веб-разработка</h3>
              <p class="text-gray-600 leading-relaxed mb-8 text-lg">Создаем современные веб-приложения с использованием передовых технологий</p>
              <ul class="text-gray-600 text-base space-y-3 mb-8">
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3"></div>
                  Frontend и Backend
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3"></div>
                  Progressive Web Apps
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3"></div>
                  API и микросервисы
                </li>
              </ul>
              <div class="text-purple-600 font-bold text-2xl">От 1,200,000 ₽</div>
            </div>
          </div>

          <!-- Big Data & Analytics Service -->
          <div class="group relative bg-white rounded-3xl p-10 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-orange-500/5 to-red-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-20 h-20 bg-gradient-to-br from-orange-500 to-red-500 rounded-2xl flex items-center justify-center mb-8 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                </svg>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-6">Big Data & ИИ</h3>
              <p class="text-gray-600 leading-relaxed mb-8 text-lg">Собираем и анализируем большие данные, обучаем LLM модели и создаем BI решения</p>
              <ul class="text-gray-600 text-base space-y-3 mb-8">
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-orange-500 rounded-full mr-3"></div>
                  Big Data обработка
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-orange-500 rounded-full mr-3"></div>
                  Обучение LLM моделей
                </li>
                <li class="flex items-center">
                  <div class="w-2 h-2 bg-orange-500 rounded-full mr-3"></div>
                  BI системы и отчеты
                </li>
              </ul>
              <div class="text-orange-600 font-bold text-2xl">От 1,500,000 ₽</div>
            </div>
          </div>
        </div>

        <!-- Cloud Platforms Section -->
        <div class="mt-20 bg-gradient-to-br from-gray-50 to-blue-50 rounded-3xl p-12">
          <div class="text-center mb-16">
            <h3 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Облачные платформы</h3>
            <p class="text-xl text-gray-600 max-w-4xl mx-auto">Работаем с ведущими российскими и зарубежными облачными провайдерами для обеспечения надежности и соответствия требованиям</p>
          </div>
          
          <div class="grid lg:grid-cols-2 gap-12 mb-16">
            <!-- Russian Cloud Providers -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">🇷🇺 Российские облака</h4>
              <div class="space-y-6">
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-red-500 to-red-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">YC</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">Yandex Cloud</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Полный стек облачных сервисов от Яндекса</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Compute Cloud</span>
                    <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Object Storage</span>
                    <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Managed K8s</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-blue-600 to-blue-700 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">VK</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">VK Cloud (бывш. Mail.ru Cloud)</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Облачная платформа VK с широким спектром сервисов</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Cloud Servers</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">ML Platform</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">CDN</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-green-600 to-green-700 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">SB</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">SberCloud</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Корпоративное облако от Сбербанка</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Advanced AI</span>
                    <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Big Data</span>
                    <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Enterprise</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-purple-600 to-purple-700 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">CS</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">Cloud.ru (Ростелеком)</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Государственное облако с высоким уровнем безопасности</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">Госсектор</span>
                    <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">ФЗ-152</span>
                    <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">ФСТЭК</span>
                  </div>
                </div>
              </div>
            </div>

            <!-- International Cloud Providers -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">🌍 Зарубежные облака</h4>
              <div class="space-y-6">
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-orange-500 to-orange-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">AWS</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">Amazon Web Services</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Лидер рынка облачных технологий</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">EC2</span>
                    <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">Lambda</span>
                    <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">EKS</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">AZ</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">Microsoft Azure</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Корпоративное облако от Microsoft</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">App Service</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">AKS</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">AI Services</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-red-500 to-yellow-500 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">GCP</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">Google Cloud Platform</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Облако Google с фокусом на AI/ML</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-yellow-100 text-yellow-700 text-xs rounded-full">GKE</span>
                    <span class="px-3 py-1 bg-yellow-100 text-yellow-700 text-xs rounded-full">BigQuery</span>
                    <span class="px-3 py-1 bg-yellow-100 text-yellow-700 text-xs rounded-full">Vertex AI</span>
                  </div>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                  <div class="flex items-center mb-4">
                    <div class="w-12 h-12 bg-gradient-to-br from-blue-400 to-blue-500 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-xs font-bold">DO</span>
                    </div>
                    <h5 class="text-xl font-bold text-gray-900">DigitalOcean</h5>
                  </div>
                  <p class="text-gray-600 text-sm mb-4">Простое и доступное облако для разработчиков</p>
                  <div class="flex flex-wrap gap-2">
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Droplets</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Kubernetes</span>
                    <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">App Platform</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Cloud Services We Provide -->
          <div class="bg-white rounded-3xl p-12 shadow-2xl border border-gray-200">
            <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">Наши облачные услуги</h4>
            <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
              <div class="text-center">
                <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Миграция в облако</h5>
                <p class="text-gray-600 text-sm">Безопасный перенос инфраструктуры и приложений</p>
              </div>
              
              <div class="text-center">
                <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Настройка и оптимизация</h5>
                <p class="text-gray-600 text-sm">Конфигурация сервисов для максимальной производительности</p>
              </div>
              
              <div class="text-center">
                <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Безопасность</h5>
                <p class="text-gray-600 text-sm">Настройка IAM, сетевой безопасности и мониторинга</p>
              </div>
              
              <div class="text-center">
                <div class="w-16 h-16 bg-gradient-to-br from-orange-500 to-red-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Автоматизация</h5>
                <p class="text-gray-600 text-sm">Infrastructure as Code, CI/CD, автоскейлинг</p>
              </div>
            </div>
            
            <div class="mt-12 p-8 bg-gradient-to-r from-blue-50 to-purple-50 rounded-2xl">
              <h5 class="text-2xl font-bold text-gray-900 mb-4 text-center">Почему мы работаем с разными облаками?</h5>
              <div class="grid md:grid-cols-3 gap-6 text-center">
                <div>
                  <div class="text-3xl mb-3">🇷🇺</div>
                  <h6 class="font-bold text-gray-900 mb-2">Соответствие требованиям</h6>
                  <p class="text-gray-600 text-sm">Российские облака для проектов с требованиями по локализации данных</p>
                </div>
                <div>
                  <div class="text-3xl mb-3">💰</div>
                  <h6 class="font-bold text-gray-900 mb-2">Оптимизация затрат</h6>
                  <p class="text-gray-600 text-sm">Выбираем наиболее экономичное решение для каждого проекта</p>
                </div>
                <div>
                  <div class="text-3xl mb-3">🛡️</div>
                  <h6 class="font-bold text-gray-900 mb-2">Отказоустойчивость</h6>
                  <p class="text-gray-600 text-sm">Multi-cloud стратегия для максимальной надежности</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Big Data & AI Detailed Section -->
        <div class="mt-20">
          <div class="text-center mb-16">
            <h3 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Big Data и искусственный интеллект</h3>
            <p class="text-xl text-gray-600 max-w-4xl mx-auto">Превращаем ваши данные в конкурентное преимущество с помощью современных технологий анализа и машинного обучения</p>
          </div>
          
          <div class="grid lg:grid-cols-3 gap-8 mb-16">
            <!-- Big Data Processing -->
            <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-3xl p-10">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-indigo-500 rounded-2xl flex items-center justify-center mb-8 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4"></path>
                </svg>
              </div>
              <h4 class="text-2xl font-bold text-gray-900 mb-6">Обработка больших данных</h4>
              <ul class="space-y-4 text-gray-600">
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                  <span>Сбор данных из различных источников</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                  <span>ETL процессы и data pipelines</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                  <span>Хранилища данных (Data Lake, Data Warehouse)</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                  <span>Потоковая обработка в реальном времени</span>
                </li>
              </ul>
              <div class="mt-8 text-center">
                <div class="text-blue-600 font-bold text-xl">Apache Spark, Kafka, Airflow</div>
              </div>
            </div>

            <!-- LLM Training -->
            <div class="bg-gradient-to-br from-purple-50 to-pink-50 rounded-3xl p-10">
              <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mb-8 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z"></path>
                </svg>
              </div>
              <h4 class="text-2xl font-bold text-gray-900 mb-6">Обучение LLM моделей</h4>
              <ul class="space-y-4 text-gray-600">
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                  <span>Fine-tuning существующих моделей</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                  <span>Создание специализированных чат-ботов</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                  <span>RAG системы с корпоративными данными</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                  <span>Интеграция с существующими системами</span>
                </li>
              </ul>
              <div class="mt-8 text-center">
                <div class="text-purple-600 font-bold text-xl">OpenAI, Hugging Face, LangChain</div>
              </div>
            </div>

            <!-- BI Systems -->
            <div class="bg-gradient-to-br from-green-50 to-teal-50 rounded-3xl p-10">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-teal-500 rounded-2xl flex items-center justify-center mb-8 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"></path>
                </svg>
              </div>
              <h4 class="text-2xl font-bold text-gray-900 mb-6">BI системы и отчеты</h4>
              <ul class="space-y-4 text-gray-600">
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                  <span>Интерактивные дашборды</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                  <span>Автоматизированная отчетность</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                  <span>Прогнозная аналитика</span>
                </li>
                <li class="flex items-start">
                  <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                  <span>KPI мониторинг в реальном времени</span>
                </li>
              </ul>
              <div class="mt-8 text-center">
                <div class="text-green-600 font-bold text-xl">Power BI, Tableau, Grafana</div>
              </div>
            </div>
          </div>

          <!-- Use Cases -->
          <div class="bg-white rounded-3xl p-12 shadow-2xl border border-gray-200">
            <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">Примеры реализованных решений</h4>
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏪</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Ритейл</h5>
                <p class="text-gray-600 text-sm">Анализ поведения покупателей, прогнозирование спроса, персонализация предложений</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏦</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Финансы</h5>
                <p class="text-gray-600 text-sm">Скоринг клиентов, детекция мошенничества, алгоритмическая торговля</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏭</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Производство</h5>
                <p class="text-gray-600 text-sm">Предиктивное обслуживание, оптимизация процессов, контроль качества</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏥</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Здравоохранение</h5>
                <p class="text-gray-600 text-sm">Анализ медицинских данных, диагностические системы, управление ресурсами</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">📱</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">IT & Телеком</h5>
                <p class="text-gray-600 text-sm">Анализ логов, мониторинг сетей, чат-боты технической поддержки</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">📊</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Маркетинг</h5>
                <p class="text-gray-600 text-sm">Сегментация клиентов, A/B тестирование, ROI анализ кампаний</p>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">☁️</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Облачная миграция</h5>
                <p class="text-gray-600 text-sm">Перенос legacy систем в Yandex Cloud и AWS с сохранением данных</p>
                <div class="flex justify-center mt-3 space-x-2">
                  <span class="px-2 py-1 bg-red-100 text-red-600 text-xs rounded">Yandex Cloud</span>
                  <span class="px-2 py-1 bg-orange-100 text-orange-600 text-xs rounded">AWS</span>
                </div>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏛️</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Госсектор</h5>
                <p class="text-gray-600 text-sm">Развертывание в Cloud.ru с соблюдением требований ФЗ-152 и ФСТЭК</p>
                <div class="flex justify-center mt-3">
                  <span class="px-2 py-1 bg-purple-100 text-purple-600 text-xs rounded">Cloud.ru</span>
                </div>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🚀</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Стартапы</h5>
                <p class="text-gray-600 text-sm">Быстрое развертывание MVP в DigitalOcean и VK Cloud</p>
                <div class="flex justify-center mt-3 space-x-2">
                  <span class="px-2 py-1 bg-blue-100 text-blue-600 text-xs rounded">DigitalOcean</span>
                  <span class="px-2 py-1 bg-blue-100 text-blue-600 text-xs rounded">VK Cloud</span>
                </div>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🏢</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Корпоративные решения</h5>
                <p class="text-gray-600 text-sm">Hybrid cloud архитектуры с интеграцией SberCloud и Azure</p>
                <div class="flex justify-center mt-3 space-x-2">
                  <span class="px-2 py-1 bg-green-100 text-green-600 text-xs rounded">SberCloud</span>
                  <span class="px-2 py-1 bg-blue-100 text-blue-600 text-xs rounded">Azure</span>
                </div>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🌐</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Международные проекты</h5>
                <p class="text-gray-600 text-sm">Multi-region развертывание на Google Cloud Platform</p>
                <div class="flex justify-center mt-3">
                  <span class="px-2 py-1 bg-yellow-100 text-yellow-600 text-xs rounded">Google Cloud</span>
                </div>
              </div>
              
              <div class="text-center p-6 bg-gray-50 rounded-2xl">
                <div class="text-4xl mb-4">🔒</div>
                <h5 class="text-xl font-bold text-gray-900 mb-3">Высокая безопасность</h5>
                <p class="text-gray-600 text-sm">Критически важные системы в российских облаках с повышенной защитой</p>
                <div class="flex justify-center mt-3 space-x-2">
                  <span class="px-2 py-1 bg-purple-100 text-purple-600 text-xs rounded">Cloud.ru</span>
                  <span class="px-2 py-1 bg-green-100 text-green-600 text-xs rounded">SberCloud</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Dedicated Teams Section -->
        <div class="mt-20 bg-gradient-to-br from-indigo-50 to-purple-50 rounded-3xl p-12">
          <div class="text-center mb-16">
            <h3 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Индивидуальные команды</h3>
            <p class="text-xl text-gray-600 max-w-4xl mx-auto">Для больших проектов на длительный период мы собираем под вас персональную команду разработчиков</p>
          </div>
          
          <div class="grid lg:grid-cols-2 gap-12 mb-16">
            <!-- Team Benefits -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8">Преимущества персональной команды</h4>
              <div class="space-y-6">
                <div class="flex items-start">
                  <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                    </svg>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">100% фокус на вашем проекте</h5>
                    <p class="text-gray-600">Команда работает исключительно над вашими задачами без отвлечения на другие проекты</p>
                  </div>
                </div>
                
                <div class="flex items-start">
                  <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                    </svg>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Быстрый старт</h5>
                    <p class="text-gray-600">Подбираем специалистов под ваши требования за 1-2 недели</p>
                  </div>
                </div>
                
                <div class="flex items-start">
                  <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Проверенные специалисты</h5>
                    <p class="text-gray-600">Все разработчики проходят тщательный отбор и имеют опыт работы в индустрии 3+ лет</p>
                  </div>
                </div>
                
                <div class="flex items-start">
                  <div class="w-12 h-12 bg-gradient-to-br from-pink-500 to-pink-600 rounded-xl flex items-center justify-center mr-6 shadow-lg flex-shrink-0">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1"></path>
                    </svg>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Экономия до 40%</h5>
                    <p class="text-gray-600">Стоимость команды значительно ниже найма штатных сотрудников</p>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Team Composition -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8">Состав команды</h4>
              <div class="space-y-6">
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-br from-blue-500 to-blue-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-sm font-bold">TL</span>
                    </div>
                    <h5 class="text-lg font-bold text-gray-900">Team Lead / Архитектор</h5>
                  </div>
                  <p class="text-gray-600 text-sm">Планирует архитектуру, координирует команду, отвечает за качество кода</p>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-br from-green-500 to-green-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-sm font-bold">BE</span>
                    </div>
                    <h5 class="text-lg font-bold text-gray-900">Backend разработчики</h5>
                  </div>
                  <p class="text-gray-600 text-sm">Создают серверную логику, API, интеграции с базами данных</p>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-br from-purple-500 to-purple-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-sm font-bold">FE</span>
                    </div>
                    <h5 class="text-lg font-bold text-gray-900">Frontend разработчики</h5>
                  </div>
                  <p class="text-gray-600 text-sm">Разрабатывают пользовательские интерфейсы и клиентскую часть</p>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-br from-orange-500 to-red-500 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-sm font-bold">DO</span>
                    </div>
                    <h5 class="text-lg font-bold text-gray-900">DevOps инженер</h5>
                  </div>
                  <p class="text-gray-600 text-sm">Настраивает инфраструктуру, CI/CD, мониторинг</p>
                </div>
                
                <div class="bg-white rounded-2xl p-6 shadow-lg">
                  <div class="flex items-center mb-4">
                    <div class="w-10 h-10 bg-gradient-to-br from-pink-500 to-pink-600 rounded-lg flex items-center justify-center mr-4">
                      <span class="text-white text-sm font-bold">QA</span>
                    </div>
                    <h5 class="text-lg font-bold text-gray-900">QA инженер</h5>
                  </div>
                  <p class="text-gray-600 text-sm">Тестирует функциональность, автоматизирует тесты</p>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Pricing Models -->
          <div class="bg-white rounded-3xl p-12 shadow-2xl border border-gray-200">
            <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">Модели сотрудничества</h4>
            <div class="grid md:grid-cols-3 gap-8">
              <!-- Time & Material -->
              <div class="text-center p-8 bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl">
                <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-indigo-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                  </svg>
                </div>
                <h5 class="text-xl font-bold text-gray-900 mb-4">Time & Material</h5>
                <p class="text-gray-600 mb-6">Оплата по факту затраченного времени. Максимальная гибкость в изменении требований</p>
              <div class="text-blue-600 font-bold text-2xl mb-2">от 350,000 ₽/мес</div>
                <div class="text-gray-500 text-sm">за одного разработчика</div>
              </div>
              
              <!-- Fixed Price -->
              <div class="text-center p-8 bg-gradient-to-br from-green-50 to-teal-50 rounded-2xl border-2 border-green-200">
                <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-teal-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                  </svg>
                </div>
                <h5 class="text-xl font-bold text-gray-900 mb-4">Fixed Price</h5>
                <p class="text-gray-600 mb-6">Фиксированная стоимость проекта. Предсказуемый бюджет и четкие сроки</p>
              <div class="text-green-600 font-bold text-2xl mb-2">от 4,000,000 ₽</div>
                <div class="text-gray-500 text-sm">за проект (3-6 месяцев)</div>
                <div class="mt-4 text-green-600 text-sm font-medium">🏆 Популярный выбор</div>
              </div>
              
              <!-- Retainer -->
              <div class="text-center p-8 bg-gradient-to-br from-purple-50 to-pink-50 rounded-2xl">
                <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                  </svg>
                </div>
                <h5 class="text-xl font-bold text-gray-900 mb-4">Retainer</h5>
                <p class="text-gray-600 mb-6">Ежемесячная подписка на команду. Долгосрочное партнерство с льготными условиями</p>
              <div class="text-purple-600 font-bold text-2xl mb-2">от 1,800,000 ₽/мес</div>
                <div class="text-gray-500 text-sm">команда 4-6 человек</div>
              </div>
            </div>
            
            <div class="text-center mt-12">
              <p class="text-gray-600 mb-8 text-lg">Минимальный период сотрудничества — 3 месяца</p>
              <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-xl">
                Обсудить команду для проекта
                <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </NuxtLink>
            </div>
          </div>
        </div>

        <!-- Requirements Analysis Section -->
        <div class="mt-20 bg-gradient-to-br from-slate-50 to-gray-100 rounded-3xl p-12">
          <div class="text-center mb-16">
            <h3 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Сбор и анализ требований</h3>
            <p class="text-xl text-gray-600 max-w-4xl mx-auto">
              Детальный процесс выявления потребностей, составления PRD и анализа требований — 
              основа успешной реализации любого проекта
            </p>
          </div>

          <!-- Main Requirements Process -->
          <div class="grid lg:grid-cols-2 gap-12 mb-16">
            <!-- Left: Process Overview -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8">Этапы работы с требованиями</h4>
              <div class="space-y-6">
                <!-- Stage 1 -->
                <div class="flex items-start p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                  <div class="w-10 h-10 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mr-4 flex-shrink-0">
                    <span class="text-white text-sm font-bold">1</span>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Первичная консультация</h5>
                    <p class="text-gray-600 text-sm mb-3">Понимание бизнес-целей, проблем и ожиданий от проекта</p>
                    <div class="flex flex-wrap gap-2">
                      <span class="px-2 py-1 bg-blue-100 text-blue-700 text-xs rounded">Discovery Session</span>
                      <span class="px-2 py-1 bg-blue-100 text-blue-700 text-xs rounded">Stakeholder Interview</span>
                    </div>
                  </div>
                </div>

                <!-- Stage 2 -->
                <div class="flex items-start p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                  <div class="w-10 h-10 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mr-4 flex-shrink-0">
                    <span class="text-white text-sm font-bold">2</span>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Детальное интервьюирование</h5>
                    <p class="text-gray-600 text-sm mb-3">Глубокое погружение в бизнес-процессы и пользовательские сценарии</p>
                    <div class="flex flex-wrap gap-2">
                      <span class="px-2 py-1 bg-green-100 text-green-700 text-xs rounded">User Stories</span>
                      <span class="px-2 py-1 bg-green-100 text-green-700 text-xs rounded">Process Mapping</span>
                      <span class="px-2 py-1 bg-green-100 text-green-700 text-xs rounded">As-Is Analysis</span>
                    </div>
                  </div>
                </div>

                <!-- Stage 3 -->
                <div class="flex items-start p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                  <div class="w-10 h-10 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mr-4 flex-shrink-0">
                    <span class="text-white text-sm font-bold">3</span>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Составление PRD</h5>
                    <p class="text-gray-600 text-sm mb-3">Создание Product Requirements Document с детальным описанием функций</p>
                    <div class="flex flex-wrap gap-2">
                      <span class="px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded">Functional Requirements</span>
                      <span class="px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded">Non-functional Requirements</span>
                      <span class="px-2 py-1 bg-purple-100 text-purple-700 text-xs rounded">Acceptance Criteria</span>
                    </div>
                  </div>
                </div>

                <!-- Stage 4 -->
                <div class="flex items-start p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                  <div class="w-10 h-10 bg-gradient-to-br from-orange-500 to-orange-600 rounded-xl flex items-center justify-center mr-4 flex-shrink-0">
                    <span class="text-white text-sm font-bold">4</span>
                  </div>
                  <div>
                    <h5 class="text-xl font-bold text-gray-900 mb-2">Валидация и согласование</h5>
                    <p class="text-gray-600 text-sm mb-3">Проверка требований с заказчиком и всеми заинтересованными сторонами</p>
                    <div class="flex flex-wrap gap-2">
                      <span class="px-2 py-1 bg-orange-100 text-orange-700 text-xs rounded">Requirements Review</span>
                      <span class="px-2 py-1 bg-orange-100 text-orange-700 text-xs rounded">Sign-off Process</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Right: PRD Structure -->
            <div>
              <h4 class="text-3xl font-bold text-gray-900 mb-8">Структура PRD документа</h4>
              <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200">
                <div class="space-y-6">
                  <div class="border-l-4 border-blue-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">1. Executive Summary</h5>
                    <p class="text-gray-600 text-sm">Краткое описание проекта, цели и ожидаемые результаты</p>
                  </div>
                  
                  <div class="border-l-4 border-green-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">2. Business Requirements</h5>
                    <p class="text-gray-600 text-sm">Бизнес-цели, KPI, ROI, успех критерии</p>
                  </div>
                  
                  <div class="border-l-4 border-purple-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">3. User Requirements</h5>
                    <p class="text-gray-600 text-sm">Пользовательские роли, сценарии, User Stories</p>
                  </div>
                  
                  <div class="border-l-4 border-orange-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">4. Functional Requirements</h5>
                    <p class="text-gray-600 text-sm">Детальное описание функций и возможностей системы</p>
                  </div>
                  
                  <div class="border-l-4 border-red-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">5. Non-Functional Requirements</h5>
                    <p class="text-gray-600 text-sm">Производительность, безопасность, масштабируемость</p>
                  </div>
                  
                  <div class="border-l-4 border-yellow-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">6. Technical Constraints</h5>
                    <p class="text-gray-600 text-sm">Технические ограничения, интеграции, совместимость</p>
                  </div>
                  
                  <div class="border-l-4 border-indigo-500 pl-4">
                    <h5 class="font-bold text-gray-900 mb-2">7. Acceptance Criteria</h5>
                    <p class="text-gray-600 text-sm">Критерии приемки, тестовые сценарии</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Requirements Analysis Methods -->
          <div class="mb-16">
            <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">Методы анализа требований</h4>
            <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
              <!-- Method 1 -->
              <div class="text-center p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Интервьюирование</h5>
                <p class="text-gray-600 text-sm">Структурированные интервью с ключевыми стейкхолдерами</p>
              </div>

              <!-- Method 2 -->
              <div class="text-center p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Анкетирование</h5>
                <p class="text-gray-600 text-sm">Опросы для сбора количественных данных от пользователей</p>
              </div>

              <!-- Method 3 -->
              <div class="text-center p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Наблюдение</h5>
                <p class="text-gray-600 text-sm">Изучение текущих рабочих процессов в естественной среде</p>
              </div>

              <!-- Method 4 -->
              <div class="text-center p-6 bg-white rounded-2xl shadow-lg border border-gray-200">
                <div class="w-16 h-16 bg-gradient-to-br from-orange-500 to-orange-600 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-3">Воркшопы</h5>
                <p class="text-gray-600 text-sm">Коллективные сессии для выработки требований</p>
              </div>
            </div>
          </div>

          <!-- Requirements Categories -->
          <div class="mb-16">
            <h4 class="text-3xl font-bold text-gray-900 mb-8 text-center">Категории требований</h4>
            <div class="grid lg:grid-cols-3 gap-8">
              <!-- Functional -->
              <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl p-8">
                <h5 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <div class="w-8 h-8 bg-blue-500 rounded-lg flex items-center justify-center mr-3">
                    <span class="text-white text-sm font-bold">F</span>
                  </div>
                  Функциональные
                </h5>
                <div class="space-y-4">
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Бизнес-функции</div>
                      <div class="text-sm text-gray-600">Что система должна делать</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Пользовательские сценарии</div>
                      <div class="text-sm text-gray-600">Как пользователи взаимодействуют</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-blue-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Интеграции</div>
                      <div class="text-sm text-gray-600">Связи с внешними системами</div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Non-Functional -->
              <div class="bg-gradient-to-br from-green-50 to-teal-50 rounded-2xl p-8">
                <h5 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <div class="w-8 h-8 bg-green-500 rounded-lg flex items-center justify-center mr-3">
                    <span class="text-white text-sm font-bold">N</span>
                  </div>
                  Нефункциональные
                </h5>
                <div class="space-y-4">
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Производительность</div>
                      <div class="text-sm text-gray-600">Скорость, нагрузка, отклик</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Безопасность</div>
                      <div class="text-sm text-gray-600">Аутентификация, авторизация</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-green-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Масштабируемость</div>
                      <div class="text-sm text-gray-600">Рост пользователей, данных</div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Technical -->
              <div class="bg-gradient-to-br from-purple-50 to-pink-50 rounded-2xl p-8">
                <h5 class="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <div class="w-8 h-8 bg-purple-500 rounded-lg flex items-center justify-center mr-3">
                    <span class="text-white text-sm font-bold">T</span>
                  </div>
                  Технические
                </h5>
                <div class="space-y-4">
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Технологический стек</div>
                      <div class="text-sm text-gray-600">Языки, фреймворки, СУБД</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Инфраструктура</div>
                      <div class="text-sm text-gray-600">Облако, серверы, сети</div>
                    </div>
                  </div>
                  <div class="flex items-start">
                    <div class="w-2 h-2 bg-purple-500 rounded-full mr-3 mt-2"></div>
                    <div>
                      <div class="font-semibold text-gray-900">Ограничения</div>
                      <div class="text-sm text-gray-600">Совместимость, стандарты</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Deliverables -->
          <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200">
            <h4 class="text-2xl font-bold text-gray-900 mb-8 text-center">Результаты этапа анализа требований</h4>
            <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
              <div class="text-center p-4 bg-gray-50 rounded-xl">
                <div class="text-3xl mb-3">📋</div>
                <h5 class="font-bold text-gray-900 mb-2">PRD документ</h5>
                <p class="text-gray-600 text-sm">Полное техническое задание</p>
              </div>
              
              <div class="text-center p-4 bg-gray-50 rounded-xl">
                <div class="text-3xl mb-3">🗺️</div>
                <h5 class="font-bold text-gray-900 mb-2">User Journey Map</h5>
                <p class="text-gray-600 text-sm">Карта пользовательских сценариев</p>
              </div>
              
              <div class="text-center p-4 bg-gray-50 rounded-xl">
                <div class="text-3xl mb-3">🎯</div>
                <h5 class="font-bold text-gray-900 mb-2">Acceptance Criteria</h5>
                <p class="text-gray-600 text-sm">Критерии приемки функций</p>
              </div>
              
              <div class="text-center p-4 bg-gray-50 rounded-xl">
                <div class="text-3xl mb-3">📊</div>
                <h5 class="font-bold text-gray-900 mb-2">Estimation</h5>
                <p class="text-gray-600 text-sm">Оценка времени и ресурсов</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Process Overview -->
        <div class="mt-20 bg-gradient-to-br from-indigo-50 to-purple-50 rounded-3xl p-12">
          <div class="text-center mb-12">
            <h3 class="text-4xl font-bold text-gray-900 mb-6">Как мы работаем</h3>
            <p class="text-xl text-gray-600 max-w-3xl mx-auto">
              Структурированный подход к каждому проекту обеспечивает предсказуемый результат и соблюдение сроков
            </p>
          </div>
          
          <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8 mb-12">
            <!-- Step 1 -->
            <div class="text-center group">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg group-hover:scale-110 transition-transform duration-300">
                <span class="text-white text-xl font-bold">1</span>
              </div>
              <h4 class="text-lg font-bold text-gray-900 mb-3">Анализ</h4>
              <p class="text-gray-600 text-sm">Изучаем требования и планируем архитектуру</p>
            </div>
            
            <!-- Step 2 -->
            <div class="text-center group">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg group-hover:scale-110 transition-transform duration-300">
                <span class="text-white text-xl font-bold">2</span>
              </div>
              <h4 class="text-lg font-bold text-gray-900 mb-3">Проектирование</h4>
              <p class="text-gray-600 text-sm">Создаем дизайн и техническую архитектуру</p>
            </div>
            
            <!-- Step 3 -->
            <div class="text-center group">
              <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg group-hover:scale-110 transition-transform duration-300">
                <span class="text-white text-xl font-bold">3</span>
              </div>
              <h4 class="text-lg font-bold text-gray-900 mb-3">Разработка</h4>
              <p class="text-gray-600 text-sm">Пишем код и интегрируем компоненты</p>
            </div>
            
            <!-- Step 4 -->
            <div class="text-center group">
              <div class="w-16 h-16 bg-gradient-to-br from-pink-500 to-pink-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg group-hover:scale-110 transition-transform duration-300">
                <span class="text-white text-xl font-bold">4</span>
              </div>
              <h4 class="text-lg font-bold text-gray-900 mb-3">Запуск</h4>
              <p class="text-gray-600 text-sm">Развертываем и обеспечиваем поддержку</p>
            </div>
          </div>
          
          <div class="text-center">
            <NuxtLink to="/process" class="inline-flex items-center px-8 py-4 bg-white text-gray-900 rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl border border-gray-200">
              Подробнее о процессе
              <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
              </svg>
            </NuxtLink>
          </div>
        </div>

        <!-- CTA Section -->
        <div class="text-center mt-20">
          <div class="bg-white rounded-3xl p-12 shadow-2xl border border-gray-200 max-w-4xl mx-auto relative overflow-hidden">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-16 translate-x-16"></div>
            <div class="absolute bottom-0 left-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full translate-y-12 -translate-x-12"></div>
            <div class="relative z-10">
              <h3 class="text-3xl font-bold text-gray-900 mb-6">Готовы начать проект?</h3>
              <p class="text-xl text-gray-600 mb-10">Оставьте заявку, и мы свяжемся с вами для обсуждения деталей</p>
              <div class="flex flex-col sm:flex-row gap-4 justify-center">
                <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-xl">
                  Оставить заявку
                  <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                  </svg>
                </NuxtLink>
                <NuxtLink to="/process" class="inline-flex items-center px-10 py-5 border-2 border-gray-300 text-gray-700 rounded-2xl font-bold text-xl transition-all duration-300 hover:bg-gray-50 hover:border-gray-400">
                  Узнать о процессе
                </NuxtLink>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
definePageMeta({
  title: 'Услуги - TechBit'
})
</script>
