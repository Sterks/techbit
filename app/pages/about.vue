<template>
  <div>
    <!-- About Hero -->
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
            🏢 О компании
          </span>
        </div>
        <h1 class="text-5xl lg:text-7xl font-bold mb-8 leading-tight">
          <span class="bg-gradient-to-r from-white to-blue-100 bg-clip-text text-transparent">
            Мы создаем
          </span>
          <br>
          <span class="bg-gradient-to-r from-blue-100 to-purple-100 bg-clip-text text-transparent">
            будущее технологий
          </span>
        </h1>
        <p class="text-xl lg:text-2xl text-white/90 mb-8 max-w-4xl mx-auto leading-relaxed font-light">
          TechBit - это команда профессионалов, которая помогает бизнесу расти и развиваться через инновационные технологические решения
        </p>
      </div>
    </section>

    <!-- Company Story -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div>
            <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-8">Наша история</h2>
            <p class="text-xl text-gray-600 mb-8 leading-relaxed">
              Основанная в 2014 году, компания TechBit начала свой путь как небольшая команда разработчиков, 
              увлеченных созданием качественных программных решений.
            </p>
            <p class="text-xl text-gray-600 mb-8 leading-relaxed">
              За прошедшие годы мы выросли в полноценную IT-компанию, специализирующуюся на автоматизации 
              бизнес-процессов, DevOps практиках и веб-разработке.
            </p>
            <p class="text-xl text-gray-600 leading-relaxed">
              Сегодня мы гордимся тем, что помогли более чем 50 компаниям различных отраслей оптимизировать 
              их рабочие процессы и увеличить эффективность.
            </p>
          </div>
          <div class="relative">
            <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
              <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-16 translate-x-16"></div>
              <div class="absolute bottom-0 left-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full translate-y-12 -translate-x-12"></div>
              <div class="relative z-10">
                <h3 class="text-3xl font-bold text-gray-900 mb-8">Ключевые достижения</h3>
                <div class="space-y-6">
                  <div class="flex items-center">
                    <div class="w-4 h-4 bg-gradient-to-r from-blue-500 to-purple-500 rounded-full mr-6"></div>
                    <span class="text-gray-700 text-xl font-medium">10+ лет на рынке IT</span>
                  </div>
                  <div class="flex items-center">
                    <div class="w-4 h-4 bg-gradient-to-r from-green-500 to-blue-500 rounded-full mr-6"></div>
                    <span class="text-gray-700 text-xl font-medium">50+ успешных проектов</span>
                  </div>
                  <div class="flex items-center">
                    <div class="w-4 h-4 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full mr-6"></div>
                    <span class="text-gray-700 text-xl font-medium">15+ постоянных клиентов</span>
                  </div>
                  <div class="flex items-center">
                    <div class="w-4 h-4 bg-gradient-to-r from-yellow-500 to-orange-500 rounded-full mr-6"></div>
                    <span class="text-gray-700 text-xl font-medium">99% удовлетворенность клиентов</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Team Section -->
    <section class="py-20 lg:py-32 relative overflow-hidden">
      <!-- Background pattern -->
      <div class="absolute inset-0 bg-gradient-to-br from-indigo-50 to-purple-50">
        <div class="absolute inset-0 opacity-30" style="background-image: radial-gradient(circle at 20px 20px, rgba(156, 146, 172, 0.1) 2px, transparent 0); background-size: 40px 40px;"></div>
      </div>

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Наша команда</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Профессионалы с многолетним опытом в IT-индустрии</p>
        </div>
        
        <div class="grid md:grid-cols-3 gap-8">
          <!-- Team Member 1 -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-blue-500/5 to-purple-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10 text-center">
              <div class="w-24 h-24 bg-gradient-to-br from-blue-500 to-blue-600 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <span class="text-white text-2xl font-bold">АД</span>
              </div>
              <h3 class="text-2xl font-bold text-gray-900 mb-3">Алексей Дмитриев</h3>
              <p class="text-blue-600 font-semibold mb-4 text-lg">CTO & Lead Developer</p>
              <p class="text-gray-600 text-base">10+ лет опыта в разработке, специалист по архитектуре систем и DevOps</p>
            </div>
          </div>

          <!-- Team Member 2 -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-green-500/5 to-blue-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10 text-center">
              <div class="w-24 h-24 bg-gradient-to-br from-green-500 to-green-600 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <span class="text-white text-2xl font-bold">МП</span>
              </div>
              <h3 class="text-2xl font-bold text-gray-900 mb-3">Мария Петрова</h3>
              <p class="text-green-600 font-semibold mb-4 text-lg">DevOps Engineer</p>
              <p class="text-gray-600 text-base">Эксперт по CI/CD, Kubernetes и облачным технологиям</p>
            </div>
          </div>

          <!-- Team Member 3 -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-purple-500/5 to-pink-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10 text-center">
              <div class="w-24 h-24 bg-gradient-to-br from-purple-500 to-purple-600 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <span class="text-white text-2xl font-bold">ДС</span>
              </div>
              <h3 class="text-2xl font-bold text-gray-900 mb-3">Дмитрий Сидоров</h3>
              <p class="text-purple-600 font-semibold mb-4 text-lg">Frontend Developer</p>
              <p class="text-gray-600 text-base">Специалист по React, Vue.js и современным веб-технологиям</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Values Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-50 to-blue-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Наши ценности</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Принципы, которыми мы руководствуемся в работе</p>
        </div>
        
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
          <!-- Value 1 -->
          <div class="text-center group">
            <div class="w-20 h-20 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">Качество</h3>
            <p class="text-gray-600 text-base">Мы не идем на компромиссы в качестве наших решений</p>
          </div>

          <!-- Value 2 -->
          <div class="text-center group">
            <div class="w-20 h-20 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">Инновации</h3>
            <p class="text-gray-600 text-base">Постоянно изучаем новые технологии и подходы</p>
          </div>

          <!-- Value 3 -->
          <div class="text-center group">
            <div class="w-20 h-20 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">Команда</h3>
            <p class="text-gray-600 text-base">Вместе мы достигаем большего, чем по отдельности</p>
          </div>

          <!-- Value 4 -->
          <div class="text-center group">
            <div class="w-20 h-20 bg-gradient-to-br from-pink-500 to-pink-600 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
              <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">Страсть</h3>
            <p class="text-gray-600 text-base">Мы любим то, что делаем, и это видно в результатах</p>
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
          <h2 class="text-4xl lg:text-5xl font-bold text-white mb-8">Готовы работать с нами?</h2>
          <p class="text-xl text-white/90 mb-10 max-w-3xl mx-auto">
            Давайте обсудим ваш проект и найдем оптимальное решение для вашего бизнеса
          </p>
          <NuxtLink to="/contact" class="inline-flex items-center px-10 py-5 bg-white text-blue-600 rounded-2xl font-bold text-xl transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-white/20">
            Связаться с нами
            <svg class="w-6 h-6 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
            </svg>
          </NuxtLink>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
definePageMeta({
  title: 'О нас - TechBit'
})
</script>
