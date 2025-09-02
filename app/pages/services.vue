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
        
        <div class="grid md:grid-cols-3 gap-8">
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
              <div class="text-blue-600 font-bold text-2xl">От 50,000 ₽</div>
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
              <div class="text-green-600 font-bold text-2xl">От 80,000 ₽</div>
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
              <div class="text-purple-600 font-bold text-2xl">От 120,000 ₽</div>
            </div>
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
              <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-xl">
                Оставить заявку
                <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </NuxtLink>
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
