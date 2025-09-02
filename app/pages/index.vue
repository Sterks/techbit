<template>
  <div>
    <!-- Hero Section -->
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

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <div class="mb-6">
            <span class="inline-flex items-center px-6 py-3 rounded-full text-sm font-bold bg-white/20 backdrop-blur-sm text-white border border-white/30 shadow-lg">
              🚀 Инновационные технологии
            </span>
          </div>
          <h1 class="text-5xl lg:text-7xl font-bold mb-8 leading-tight">
            <span class="bg-gradient-to-r from-white to-blue-100 bg-clip-text text-transparent">
              Автоматизируйте
            </span>
            <br>
            <span class="bg-gradient-to-r from-blue-100 to-purple-100 bg-clip-text text-transparent">
              Масштабируйте
            </span>
            <br>
            <span class="bg-gradient-to-r from-purple-100 to-pink-100 bg-clip-text text-transparent">
              Создавайте
            </span>
          </h1>
          <p class="text-xl lg:text-2xl text-white/90 mb-12 max-w-4xl mx-auto leading-relaxed font-light">
            Экспертные услуги в области автоматизации, DevOps и веб-разработки для вашего бизнеса
          </p>
          <div class="flex flex-col sm:flex-row gap-6 justify-center">
            <NuxtLink to="/contact" class="group relative px-10 py-5 bg-white text-blue-600 rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-white/20">
              <span class="relative z-10">Начать проект</span>
              <div class="absolute inset-0 bg-gradient-to-r from-blue-50 to-purple-50 rounded-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
            </NuxtLink>
            <NuxtLink to="/services" class="px-10 py-5 border-2 border-white/30 text-white rounded-2xl font-bold text-lg transition-all duration-300 hover:bg-white/10 hover:border-white/50 backdrop-blur-sm">
              Узнать больше
            </NuxtLink>
          </div>
        </div>
      </div>
    </section>

    <!-- Services Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Наши услуги</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Комплексные решения для цифрового бизнеса</p>
        </div>
        
        <div class="grid md:grid-cols-3 gap-8">
          <!-- Automation Card -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-blue-500/5 to-purple-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                </svg>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-4">Автоматизация процессов</h3>
              <p class="text-gray-600 leading-relaxed mb-6">
                Оптимизируем рабочие процессы с помощью современных инструментов автоматизации, 
                что позволяет сократить время выполнения задач и повысить эффективность.
              </p>
              <div class="flex items-center text-blue-600 font-semibold group-hover:translate-x-2 transition-transform duration-300">
                <span>Узнать больше</span>
                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </div>
            </div>
          </div>

          <!-- DevOps Card -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-green-500/5 to-blue-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01"></path>
                </svg>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-4">DevOps практики</h3>
              <p class="text-gray-600 leading-relaxed mb-6">
                Внедряем CI/CD, мониторинг и инфраструктуру как код для ускорения 
                разработки и повышения надежности ваших приложений.
              </p>
              <div class="flex items-center text-green-600 font-semibold group-hover:translate-x-2 transition-transform duration-300">
                <span>Узнать больше</span>
                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </div>
            </div>
          </div>

          <!-- Web Development Card -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-purple-500/5 to-pink-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                </svg>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-4">Веб-разработка</h3>
              <p class="text-gray-600 leading-relaxed mb-6">
                Создаем современные веб-приложения с использованием передовых технологий, 
                обеспечивая высокую производительность и отличный пользовательский опыт.
              </p>
              <div class="flex items-center text-purple-600 font-semibold group-hover:translate-x-2 transition-transform duration-300">
                <span>Узнать больше</span>
                <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </div>
            </div>
          </div>
        </div>
        
        <div class="text-center mt-16">
          <NuxtLink to="/services" class="inline-flex items-center px-8 py-4 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl">
            Все услуги
            <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
            </svg>
          </NuxtLink>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section class="py-20 lg:py-32 relative overflow-hidden">
      <!-- Background pattern -->
      <div class="absolute inset-0 bg-gradient-to-br from-indigo-50 to-purple-50">
        <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 20px 20px, rgba(156, 146, 172, 0.1) 2px, transparent 0); background-size: 40px 40px;"></div>
      </div>

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div>
            <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-8">О TechBit</h2>
            <p class="text-xl text-gray-600 mb-8 leading-relaxed">
              Мы команда экспертов, специализирующихся на создании эффективных цифровых решений. 
              Наша миссия - помочь бизнесу расти через технологии, автоматизацию и инновации.
            </p>
            <div class="space-y-6 mb-10">
              <div class="flex items-center">
                <div class="w-3 h-3 bg-gradient-to-r from-blue-500 to-purple-500 rounded-full mr-4"></div>
                <span class="text-gray-700 text-xl font-medium">10+ лет опыта в разработке</span>
              </div>
              <div class="flex items-center">
                <div class="w-3 h-3 bg-gradient-to-r from-green-500 to-blue-500 rounded-full mr-4"></div>
                <span class="text-gray-700 text-xl font-medium">50+ успешных проектов</span>
              </div>
              <div class="flex items-center">
                <div class="w-3 h-3 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full mr-4"></div>
                <span class="text-gray-700 text-xl font-medium">24/7 поддержка клиентов</span>
              </div>
            </div>
            <NuxtLink to="/about" class="inline-flex items-center px-8 py-4 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl">
              Узнать больше
              <svg class="w-5 h-5 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
              </svg>
            </NuxtLink>
          </div>
          <div class="relative">
            <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
              <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-16 translate-x-16"></div>
              <div class="absolute bottom-0 left-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full translate-y-12 -translate-x-12"></div>
              <div class="relative z-10">
                <h3 class="text-3xl font-bold text-gray-900 mb-8">Технологический стек</h3>
                <div class="grid grid-cols-2 gap-6">
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-blue-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">Docker & Kubernetes</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-green-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">AWS & Azure</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-purple-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">Node.js & Python</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-pink-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">React & Vue.js</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-indigo-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">Terraform & Ansible</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-yellow-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">Jenkins & GitLab CI</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-blue-600 via-purple-600 to-indigo-700 relative overflow-hidden">
      <!-- Background pattern -->
      <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 1px 1px, rgba(255,255,255,0.1) 1px, transparent 0); background-size: 60px 60px;"></div>
      
      <!-- Floating elements -->
      <div class="absolute inset-0 overflow-hidden">
        <div class="absolute top-10 left-20 w-20 h-20 bg-white/10 rounded-full blur-2xl animate-pulse"></div>
        <div class="absolute bottom-10 right-20 w-16 h-16 bg-purple-400/20 rounded-full blur-xl animate-bounce"></div>
      </div>

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
          <h2 class="text-4xl lg:text-5xl font-bold text-white mb-6">Свяжитесь с нами</h2>
          <p class="text-xl text-white/90 max-w-3xl mx-auto">Готовы начать проект? Давайте обсудим детали</p>
        </div>
        <div class="max-w-3xl mx-auto">
          <div class="text-center bg-white/10 backdrop-blur-xl rounded-3xl p-12 border border-white/20 shadow-2xl">
            <p class="text-white/90 mb-10 text-xl">
              Оставьте заявку, и мы свяжемся с вами в течение 24 часов для обсуждения вашего проекта
            </p>
            <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-white text-blue-600 rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-white/20">
              Оставить заявку
              <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
              </svg>
            </NuxtLink>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
definePageMeta({
  title: 'Главная - TechBit'
})
</script>
