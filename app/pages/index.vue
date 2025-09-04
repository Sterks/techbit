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

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
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
            и создавайте
          </span>
        </h1>
        <p class="text-xl lg:text-2xl text-white/90 mb-8 max-w-4xl mx-auto leading-relaxed font-light">
          Экспертные услуги в области автоматизации, DevOps, веб-разработки, Big Data и искусственного интеллекта для вашего бизнеса
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <NuxtLink to="/contact" class="group relative px-8 py-4 bg-white text-blue-600 rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-white/20">
            <span class="relative z-10">Начать проект</span>
            <div class="absolute inset-0 bg-gradient-to-r from-blue-50 to-purple-50 rounded-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
          </NuxtLink>
          <NuxtLink to="/process" class="px-8 py-4 border-2 border-white/30 text-white rounded-2xl font-bold text-lg transition-all duration-300 hover:bg-white/10 hover:border-white/50 backdrop-blur-sm">
            Как мы работаем
          </NuxtLink>
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
        
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
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

          <!-- Big Data & AI Card -->
          <div class="group relative bg-white rounded-3xl p-8 shadow-xl border border-gray-200 hover:shadow-2xl transition-all duration-500 hover:-translate-y-2">
            <div class="absolute inset-0 bg-gradient-to-br from-orange-500/5 to-red-500/5 rounded-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            <div class="relative z-10">
              <div class="w-12 h-12 bg-gradient-to-br from-orange-500 to-red-500 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300 shadow-lg">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                </svg>
              </div>
              <h3 class="text-xl font-bold text-gray-900 mb-4">Big Data & ИИ</h3>
              <p class="text-gray-600 leading-relaxed mb-6">
                Анализируем большие данные, обучаем LLM модели и создаем BI системы 
                для принятия data-driven решений.
              </p>
              <div class="flex items-center text-orange-600 font-semibold group-hover:translate-x-2 transition-transform duration-300">
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

    <!-- DevOps Pipeline Section -->
    <section class="py-20 lg:py-32 bg-gradient-to-br from-gray-900 via-blue-900 to-indigo-900 relative overflow-hidden">
      <!-- Background elements -->
      <div class="absolute inset-0">
        <div class="absolute inset-0 opacity-20" style="background-image: radial-gradient(circle at 2px 2px, rgba(255,255,255,0.1) 1px, transparent 0); background-size: 50px 50px;"></div>
        <div class="absolute top-20 left-10 w-32 h-32 bg-blue-400/10 rounded-full blur-3xl animate-pulse"></div>
        <div class="absolute bottom-20 right-10 w-40 h-40 bg-purple-400/10 rounded-full blur-3xl animate-pulse"></div>
      </div>

      <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <div class="mb-6">
            <span class="inline-flex items-center px-6 py-3 rounded-full text-sm font-bold bg-white/10 backdrop-blur-sm text-white border border-white/20 shadow-lg">
              🚀 DevOps Pipeline
            </span>
          </div>
          <h2 class="text-4xl lg:text-6xl font-bold mb-8 leading-tight">
            <span class="bg-gradient-to-r from-white to-blue-200 bg-clip-text text-transparent">
              От кода до продакшена
            </span>
          </h2>
          <p class="text-xl text-white/80 max-w-4xl mx-auto leading-relaxed">
            Полный жизненный цикл разработки с автоматизацией, контейнеризацией и оркестрацией в Kubernetes
          </p>
        </div>

        <!-- Pipeline Flow -->
        <div class="mb-20">
          <div class="grid lg:grid-cols-6 gap-4 mb-12">
            <!-- Stage 1: Development -->
            <div class="lg:col-span-1 relative">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-green-400 to-green-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">Development</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>Git Flow</div>
                    <div>Feature Branches</div>
                    <div>Code Review</div>
                  </div>
                </div>
              </div>
              <!-- Arrow -->
              <div class="hidden lg:block absolute -right-2 top-1/2 transform -translate-y-1/2 z-10">
                <div class="w-4 h-4 bg-blue-400 rounded-full"></div>
                <div class="w-8 h-0.5 bg-gradient-to-r from-blue-400 to-purple-400 -mt-2 ml-4"></div>
              </div>
            </div>

            <!-- Stage 2: CI -->
            <div class="lg:col-span-1 relative">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-blue-400 to-blue-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">CI Pipeline</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>Automated Tests</div>
                    <div>Code Quality</div>
                    <div>Security Scan</div>
                  </div>
                </div>
              </div>
              <!-- Arrow -->
              <div class="hidden lg:block absolute -right-2 top-1/2 transform -translate-y-1/2 z-10">
                <div class="w-4 h-4 bg-purple-400 rounded-full"></div>
                <div class="w-8 h-0.5 bg-gradient-to-r from-purple-400 to-pink-400 -mt-2 ml-4"></div>
              </div>
            </div>

            <!-- Stage 3: Build -->
            <div class="lg:col-span-1 relative">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-purple-400 to-purple-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">Build & Package</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>Docker Build</div>
                    <div>Image Registry</div>
                    <div>Artifact Store</div>
                  </div>
                </div>
              </div>
              <!-- Arrow -->
              <div class="hidden lg:block absolute -right-2 top-1/2 transform -translate-y-1/2 z-10">
                <div class="w-4 h-4 bg-pink-400 rounded-full"></div>
                <div class="w-8 h-0.5 bg-gradient-to-r from-pink-400 to-orange-400 -mt-2 ml-4"></div>
              </div>
            </div>

            <!-- Stage 4: Deploy Staging -->
            <div class="lg:col-span-1 relative">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-orange-400 to-orange-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">Staging Deploy</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>K8s Deployment</div>
                    <div>Integration Tests</div>
                    <div>QA Validation</div>
                  </div>
                </div>
              </div>
              <!-- Arrow -->
              <div class="hidden lg:block absolute -right-2 top-1/2 transform -translate-y-1/2 z-10">
                <div class="w-4 h-4 bg-red-400 rounded-full"></div>
                <div class="w-8 h-0.5 bg-gradient-to-r from-orange-400 to-red-400 -mt-2 ml-4"></div>
              </div>
            </div>

            <!-- Stage 5: Production Deploy -->
            <div class="lg:col-span-1 relative">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-red-400 to-red-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">Production</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>Blue-Green Deploy</div>
                    <div>Health Checks</div>
                    <div>Rollback Ready</div>
                  </div>
                </div>
              </div>
              <!-- Arrow -->
              <div class="hidden lg:block absolute -right-2 top-1/2 transform -translate-y-1/2 z-10">
                <div class="w-4 h-4 bg-yellow-400 rounded-full"></div>
                <div class="w-8 h-0.5 bg-gradient-to-r from-red-400 to-yellow-400 -mt-2 ml-4"></div>
              </div>
            </div>

            <!-- Stage 6: Monitor -->
            <div class="lg:col-span-1">
              <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-6 border border-white/20 shadow-xl h-full">
                <div class="text-center">
                  <div class="w-16 h-16 bg-gradient-to-br from-yellow-400 to-yellow-500 rounded-2xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                    </svg>
                  </div>
                  <h3 class="text-lg font-bold text-white mb-2">Monitoring</h3>
                  <div class="text-sm text-white/70 space-y-1">
                    <div>Metrics & Logs</div>
                    <div>Alerting</div>
                    <div>Performance</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Detailed Kubernetes Deployment -->
        <div class="bg-white/5 backdrop-blur-sm rounded-3xl p-12 border border-white/10 mb-20">
          <h3 class="text-3xl font-bold text-white mb-8 text-center">Kubernetes Deployment Pipeline</h3>
          
          <div class="grid lg:grid-cols-3 gap-8 mb-12">
            <!-- Preparation -->
            <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 border border-white/20">
              <h4 class="text-xl font-bold text-white mb-6 flex items-center">
                <div class="w-8 h-8 bg-blue-500 rounded-lg flex items-center justify-center mr-3">
                  <span class="text-white text-sm font-bold">1</span>
                </div>
                Подготовка
              </h4>
              <div class="space-y-4 text-white/80">
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-blue-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Dockerfile оптимизация</div>
                    <div class="text-sm text-white/60">Multi-stage build, минимальный образ</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-blue-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Kubernetes манифесты</div>
                    <div class="text-sm text-white/60">Deployment, Service, Ingress, ConfigMap</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-blue-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Helm Charts</div>
                    <div class="text-sm text-white/60">Темплейты для разных окружений</div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Deployment -->
            <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 border border-white/20">
              <h4 class="text-xl font-bold text-white mb-6 flex items-center">
                <div class="w-8 h-8 bg-green-500 rounded-lg flex items-center justify-center mr-3">
                  <span class="text-white text-sm font-bold">2</span>
                </div>
                Деплой
              </h4>
              <div class="space-y-4 text-white/80">
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-green-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Rolling Update</div>
                    <div class="text-sm text-white/60">Постепенное обновление подов</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-green-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Health Checks</div>
                    <div class="text-sm text-white/60">Readiness и Liveness проверки</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-green-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Resource Limits</div>
                    <div class="text-sm text-white/60">CPU, Memory, автомасштабирование</div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Monitoring -->
            <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 border border-white/20">
              <h4 class="text-xl font-bold text-white mb-6 flex items-center">
                <div class="w-8 h-8 bg-purple-500 rounded-lg flex items-center justify-center mr-3">
                  <span class="text-white text-sm font-bold">3</span>
                </div>
                Мониторинг
              </h4>
              <div class="space-y-4 text-white/80">
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-purple-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Prometheus + Grafana</div>
                    <div class="text-sm text-white/60">Метрики приложений и инфраструктуры</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-purple-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">ELK Stack</div>
                    <div class="text-sm text-white/60">Централизованное логирование</div>
                  </div>
                </div>
                <div class="flex items-start">
                  <div class="w-2 h-2 bg-purple-400 rounded-full mr-3 mt-2"></div>
                  <div>
                    <div class="font-semibold">Jaeger Tracing</div>
                    <div class="text-sm text-white/60">Распределенная трассировка</div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Pipeline Tools -->
          <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
            <div class="text-center p-6 bg-white/5 rounded-2xl border border-white/10">
              <div class="w-12 h-12 bg-orange-500 rounded-xl flex items-center justify-center mx-auto mb-4">
                <span class="text-white text-sm font-bold">Git</span>
              </div>
              <h5 class="text-white font-semibold mb-2">Version Control</h5>
              <p class="text-white/60 text-sm">GitLab, GitHub, Bitbucket</p>
            </div>
            
            <div class="text-center p-6 bg-white/5 rounded-2xl border border-white/10">
              <div class="w-12 h-12 bg-blue-500 rounded-xl flex items-center justify-center mx-auto mb-4">
                <span class="text-white text-sm font-bold">CI</span>
              </div>
              <h5 class="text-white font-semibold mb-2">CI/CD</h5>
              <p class="text-white/60 text-sm">Jenkins, GitLab CI, GitHub Actions</p>
            </div>
            
            <div class="text-center p-6 bg-white/5 rounded-2xl border border-white/10">
              <div class="w-12 h-12 bg-purple-500 rounded-xl flex items-center justify-center mx-auto mb-4">
                <span class="text-white text-sm font-bold">K8s</span>
              </div>
              <h5 class="text-white font-semibold mb-2">Orchestration</h5>
              <p class="text-white/60 text-sm">Kubernetes, Helm, ArgoCD</p>
            </div>
            
            <div class="text-center p-6 bg-white/5 rounded-2xl border border-white/10">
              <div class="w-12 h-12 bg-green-500 rounded-xl flex items-center justify-center mx-auto mb-4">
                <span class="text-white text-sm font-bold">IaC</span>
              </div>
              <h5 class="text-white font-semibold mb-2">Infrastructure</h5>
              <p class="text-white/60 text-sm">Terraform, Ansible, Pulumi</p>
            </div>
          </div>
        </div>

        <!-- Pipeline Diagram -->
        <div class="bg-white/5 backdrop-blur-sm rounded-3xl p-12 border border-white/10 mb-20">
          <h3 class="text-3xl font-bold text-white mb-8 text-center">Полная схема жизненного цикла разработки</h3>
          <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 border border-white/20">
            <div class="mermaid-container text-center">
              <p class="text-white/80 mb-6">Детальная диаграмма процесса от разработки до мониторинга в продакшене</p>
              <div class="bg-white rounded-xl p-6">
                <div id="pipeline-diagram" class="mermaid">
graph TD
    A["👨‍💻 Development<br/>Git Flow, Feature Branches"] --> B["🔍 Code Review<br/>Pull Request, Peer Review"]
    B --> C["🧪 CI Pipeline<br/>Unit Tests, Integration Tests"]
    C --> D["🔒 Security Scan<br/>SAST, Dependency Check"]
    D --> E["📦 Docker Build<br/>Multi-stage, Optimization"]
    E --> F["📋 Registry Push<br/>Harbor, ECR, GCR"]
    F --> G["🚀 Staging Deploy<br/>Kubernetes Deployment"]
    G --> H["✅ QA Testing<br/>Automated & Manual Tests"]
    H --> I{"🎯 Production<br/>Ready?"}
    I -->|Yes| J["🌟 Blue-Green Deploy<br/>Zero Downtime"]
    I -->|No| K["🔄 Fix Issues"]
    K --> A
    J --> L["💚 Health Checks<br/>Readiness & Liveness"]
    L --> M["📊 Monitoring<br/>Prometheus + Grafana"]
    M --> N["📝 Logging<br/>ELK Stack"]
    N --> O["🔍 Tracing<br/>Jaeger"]
    O --> P["📈 Metrics Analysis"]
    P --> Q{"🚨 Issues<br/>Detected?"}
    Q -->|Yes| R["🔄 Rollback<br/>Automated Recovery"]
    Q -->|No| S["✨ Success!"]
    R --> T["🔧 Hotfix"]
    T --> A
    
    %% Kubernetes specific flow
    G --> G1["⚙️ K8s Manifest<br/>Deployment.yaml"]
    G1 --> G2["🎛️ ConfigMap<br/>Environment Config"]
    G2 --> G3["🔐 Secrets<br/>Database, API Keys"]
    G3 --> G4["🌐 Service<br/>Load Balancing"]
    G4 --> G5["🚪 Ingress<br/>External Access"]
    
    %% GitOps Flow
    J --> J1["📝 GitOps<br/>ArgoCD/Flux"]
    J1 --> J2["🔄 Auto Sync<br/>Git → Cluster"]
    J2 --> J3["📊 Drift Detection<br/>State Monitoring"]
    
    %% Styling
    classDef devStage fill:#4ade80,stroke:#16a34a,stroke-width:2px,color:#000
    classDef ciStage fill:#3b82f6,stroke:#1d4ed8,stroke-width:2px,color:#fff
    classDef buildStage fill:#8b5cf6,stroke:#7c3aed,stroke-width:2px,color:#fff
    classDef deployStage fill:#f59e0b,stroke:#d97706,stroke-width:2px,color:#000
    classDef prodStage fill:#ef4444,stroke:#dc2626,stroke-width:2px,color:#fff
    classDef monitorStage fill:#eab308,stroke:#ca8a04,stroke-width:2px,color:#000
    classDef k8sStage fill:#06b6d4,stroke:#0891b2,stroke-width:2px,color:#fff
    classDef gitopsStage fill:#ec4899,stroke:#db2777,stroke-width:2px,color:#fff
    
    class A,B,K,T devStage
    class C,D ciStage
    class E,F buildStage
    class G,H,G1,G2,G3,G4,G5 k8sStage
    class I,J,L,R deployStage
    class M,N,O,P,Q,S monitorStage
    class J1,J2,J3 gitopsStage
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Advanced Practices -->
        <div class="grid lg:grid-cols-2 gap-12">
          <!-- GitOps -->
          <div class="bg-gradient-to-br from-blue-500/10 to-purple-500/10 backdrop-blur-sm rounded-3xl p-10 border border-white/10">
            <h3 class="text-2xl font-bold text-white mb-6 flex items-center">
              <div class="w-10 h-10 bg-gradient-to-br from-blue-500 to-purple-500 rounded-xl flex items-center justify-center mr-4">
                <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                </svg>
              </div>
              GitOps подход
            </h3>
            <div class="space-y-4 text-white/80">
              <div class="flex items-start">
                <div class="w-3 h-3 bg-blue-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">Декларативное управление</div>
                  <div class="text-sm text-white/60">Весь стейт инфраструктуры в Git репозитории</div>
                </div>
              </div>
              <div class="flex items-start">
                <div class="w-3 h-3 bg-purple-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">ArgoCD/Flux</div>
                  <div class="text-sm text-white/60">Автоматическая синхронизация с кластером</div>
                </div>
              </div>
              <div class="flex items-start">
                <div class="w-3 h-3 bg-green-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">Откат изменений</div>
                  <div class="text-sm text-white/60">Простой rollback через Git revert</div>
                </div>
              </div>
            </div>
          </div>

          <!-- Security & Compliance -->
          <div class="bg-gradient-to-br from-green-500/10 to-teal-500/10 backdrop-blur-sm rounded-3xl p-10 border border-white/10">
            <h3 class="text-2xl font-bold text-white mb-6 flex items-center">
              <div class="w-10 h-10 bg-gradient-to-br from-green-500 to-teal-500 rounded-xl flex items-center justify-center mr-4">
                <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                </svg>
              </div>
              Безопасность
            </h3>
            <div class="space-y-4 text-white/80">
              <div class="flex items-start">
                <div class="w-3 h-3 bg-green-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">Container Security</div>
                  <div class="text-sm text-white/60">Сканирование образов на уязвимости</div>
                </div>
              </div>
              <div class="flex items-start">
                <div class="w-3 h-3 bg-teal-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">RBAC & Network Policies</div>
                  <div class="text-sm text-white/60">Контроль доступа и сетевая изоляция</div>
                </div>
              </div>
              <div class="flex items-start">
                <div class="w-3 h-3 bg-blue-400 rounded-full mr-4 mt-1"></div>
                <div>
                  <div class="font-semibold text-white">Secrets Management</div>
                  <div class="text-sm text-white/60">HashiCorp Vault, Kubernetes Secrets</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Development Process Section -->
    <section class="py-20 lg:py-32 bg-white relative overflow-hidden">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Как мы работаем</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Прозрачный и эффективный процесс от идеи до запуска</p>
        </div>
        
        <div class="grid lg:grid-cols-4 md:grid-cols-2 gap-8">
          <!-- Step 1: Analysis -->
          <div class="group relative text-center">
            <div class="relative mb-8">
              <div class="w-20 h-20 bg-gradient-to-br from-blue-500 to-blue-600 rounded-full flex items-center justify-center mx-auto shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                </svg>
              </div>
              <div class="absolute -top-2 -right-2 w-8 h-8 bg-blue-100 text-blue-600 rounded-full flex items-center justify-center text-sm font-bold">1</div>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-4">Анализ и планирование</h3>
            <p class="text-gray-600 text-base leading-relaxed">
              Изучаем ваши потребности, анализируем требования и создаем техническое задание
            </p>
            <div class="mt-4 text-sm text-blue-600 font-medium">1-2 недели</div>
          </div>

          <!-- Step 2: Design -->
          <div class="group relative text-center">
            <div class="relative mb-8">
              <div class="w-20 h-20 bg-gradient-to-br from-green-500 to-green-600 rounded-full flex items-center justify-center mx-auto shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h4a2 2 0 002-2V9a2 2 0 00-2-2H7a2 2 0 00-2 2v6a2 2 0 002 2z"></path>
                </svg>
              </div>
              <div class="absolute -top-2 -right-2 w-8 h-8 bg-green-100 text-green-600 rounded-full flex items-center justify-center text-sm font-bold">2</div>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-4">Проектирование</h3>
            <p class="text-gray-600 text-base leading-relaxed">
              Создаем системную архитектуру, прототипы интерфейсов и выбираем оптимальные технологии
            </p>
            <div class="mt-4 text-sm text-green-600 font-medium">1-3 недели</div>
          </div>

          <!-- Step 3: Development -->
          <div class="group relative text-center">
            <div class="relative mb-8">
              <div class="w-20 h-20 bg-gradient-to-br from-purple-500 to-purple-600 rounded-full flex items-center justify-center mx-auto shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
                </svg>
              </div>
              <div class="absolute -top-2 -right-2 w-8 h-8 bg-purple-100 text-purple-600 rounded-full flex items-center justify-center text-sm font-bold">3</div>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-4">Разработка</h3>
            <p class="text-gray-600 text-base leading-relaxed">
              Пишем код, интегрируем компоненты и проводим тестирование на каждом этапе
            </p>
            <div class="mt-4 text-sm text-purple-600 font-medium">2-8 недель</div>
          </div>

          <!-- Step 4: Launch -->
          <div class="group relative text-center">
            <div class="relative mb-8">
              <div class="w-20 h-20 bg-gradient-to-br from-pink-500 to-pink-600 rounded-full flex items-center justify-center mx-auto shadow-lg group-hover:scale-110 transition-transform duration-300">
                <svg class="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
                </svg>
              </div>
              <div class="absolute -top-2 -right-2 w-8 h-8 bg-pink-100 text-pink-600 rounded-full flex items-center justify-center text-sm font-bold">4</div>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-4">Запуск и поддержка</h3>
            <p class="text-gray-600 text-base leading-relaxed">
              Развертываем решение, обучаем команду и обеспечиваем техническую поддержку
            </p>
            <div class="mt-4 text-sm text-pink-600 font-medium">1 неделя + поддержка</div>
          </div>
        </div>

        <!-- Process Benefits -->
        <div class="mt-20 bg-gradient-to-br from-gray-50 to-blue-50 rounded-3xl p-12">
          <div class="text-center mb-12">
            <h3 class="text-3xl font-bold text-gray-900 mb-4">Преимущества нашего подхода</h3>
            <p class="text-xl text-gray-600">Почему клиенты выбирают именно нас</p>
          </div>
          <div class="grid md:grid-cols-3 gap-8">
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-blue-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Прозрачность</h4>
              <p class="text-gray-600">Регулярные отчеты о прогрессе и демонстрации результатов</p>
            </div>
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-green-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Гибкость</h4>
              <p class="text-gray-600">Адаптируем процесс под ваши потребности и изменения</p>
            </div>
            <div class="text-center">
              <div class="w-16 h-16 bg-gradient-to-br from-purple-500 to-purple-600 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
              </div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Сроки</h4>
              <p class="text-gray-600">Соблюдаем договоренности по времени и бюджету</p>
            </div>
          </div>
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
                    <span class="text-gray-700 font-medium">Yandex Cloud & AWS</span>
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
                    <span class="text-gray-700 font-medium">SberCloud & VK Cloud</span>
                  </div>
                  <div class="flex items-center space-x-3">
                    <div class="w-3 h-3 bg-yellow-500 rounded-full"></div>
                    <span class="text-gray-700 font-medium">Terraform & Ansible</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Cloud Providers Section -->
    <section class="py-20 lg:py-32 bg-white relative overflow-hidden">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Облачные решения</h2>
          <p class="text-xl text-gray-600 max-w-4xl mx-auto">
            Работаем как с российскими, так и с зарубежными облачными провайдерами, 
            выбирая оптимальное решение для каждого проекта
          </p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-16 mb-16">
          <!-- Russian Clouds -->
          <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-3xl p-10">
            <div class="text-center mb-8">
              <div class="w-16 h-16 bg-gradient-to-br from-blue-500 to-indigo-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <span class="text-white text-2xl">🇷🇺</span>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-4">Российские облака</h3>
              <p class="text-gray-600 text-lg">Соответствие требованиям локализации данных и законодательству РФ</p>
            </div>
            
            <div class="space-y-6">
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-red-500 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">YC</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">Yandex Cloud</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Полнофункциональная облачная платформа от Яндекса</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Compute Cloud</span>
                  <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Managed K8s</span>
                  <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">DataSphere</span>
                </div>
              </div>
              
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-green-600 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">SB</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">SberCloud</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Корпоративное облако с продвинутыми AI/ML сервисами</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Advanced AI</span>
                  <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Big Data</span>
                  <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">Enterprise</span>
                </div>
              </div>
              
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-purple-600 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">CR</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">Cloud.ru</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Государственное облако с соблюдением всех требований безопасности</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">ФЗ-152</span>
                  <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">ФСТЭК</span>
                  <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">Госсектор</span>
                </div>
              </div>
            </div>
          </div>

          <!-- International Clouds -->
          <div class="bg-gradient-to-br from-green-50 to-teal-50 rounded-3xl p-10">
            <div class="text-center mb-8">
              <div class="w-16 h-16 bg-gradient-to-br from-green-500 to-teal-500 rounded-2xl flex items-center justify-center mx-auto mb-6 shadow-lg">
                <span class="text-white text-2xl">🌍</span>
              </div>
              <h3 class="text-3xl font-bold text-gray-900 mb-4">Зарубежные облака</h3>
              <p class="text-gray-600 text-lg">Глобальные решения с передовыми технологиями и сервисами</p>
            </div>
            
            <div class="space-y-6">
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-orange-500 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">AWS</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">Amazon Web Services</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Лидер рынка облачных технологий с богатой экосистемой</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">EC2</span>
                  <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">Lambda</span>
                  <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">EKS</span>
                </div>
              </div>
              
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-blue-500 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">AZ</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">Microsoft Azure</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Корпоративное облако с интеграцией Microsoft экосистемы</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">App Service</span>
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">AKS</span>
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">AI Services</span>
                </div>
              </div>
              
              <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-200">
                <div class="flex items-center mb-3">
                  <div class="w-10 h-10 bg-blue-400 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-white text-sm font-bold">DO</span>
                  </div>
                  <h4 class="text-xl font-bold text-gray-900">DigitalOcean</h4>
                </div>
                <p class="text-gray-600 text-sm mb-3">Простое и доступное облако для быстрого развертывания</p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Droplets</span>
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Kubernetes</span>
                  <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Spaces</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Real Examples -->
        <div class="bg-gradient-to-br from-gray-50 to-blue-50 rounded-3xl p-12">
          <h3 class="text-3xl font-bold text-gray-900 mb-8 text-center">Примеры реализованных проектов</h3>
          <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- Example 1 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🏦</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Банковская система</h4>
              <p class="text-gray-600 text-sm mb-4">Миграция core banking системы в SberCloud с соблюдением требований ЦБ РФ</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-green-100 text-green-700 text-xs rounded-full">SberCloud</span>
              </div>
            </div>
            
            <!-- Example 2 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🏭</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Промышленный IoT</h4>
              <p class="text-gray-600 text-sm mb-4">Система мониторинга оборудования на базе Yandex Cloud IoT Core</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-red-100 text-red-700 text-xs rounded-full">Yandex Cloud</span>
              </div>
            </div>
            
            <!-- Example 3 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🛒</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">E-commerce платформа</h4>
              <p class="text-gray-600 text-sm mb-4">Высоконагруженный интернет-магазин на AWS с автомасштабированием</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-orange-100 text-orange-700 text-xs rounded-full">AWS</span>
              </div>
            </div>
            
            <!-- Example 4 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🏛️</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Госуслуги</h4>
              <p class="text-gray-600 text-sm mb-4">Портал государственных услуг в Cloud.ru с сертификацией ФСТЭК</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-purple-100 text-purple-700 text-xs rounded-full">Cloud.ru</span>
              </div>
            </div>
            
            <!-- Example 5 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🎮</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Игровая платформа</h4>
              <p class="text-gray-600 text-sm mb-4">Мультиплеерная игра с глобальными серверами на Azure</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">Azure</span>
              </div>
            </div>
            
            <!-- Example 6 -->
            <div class="bg-white rounded-2xl p-8 shadow-lg border border-gray-200 text-center">
              <div class="text-4xl mb-4">🚀</div>
              <h4 class="text-xl font-bold text-gray-900 mb-3">Стартап MVP</h4>
              <p class="text-gray-600 text-sm mb-4">Быстрое развертывание прототипа мобильного приложения на DigitalOcean</p>
              <div class="flex justify-center">
                <span class="px-3 py-1 bg-blue-100 text-blue-700 text-xs rounded-full">DigitalOcean</span>
              </div>
            </div>
          </div>
          
          <!-- Why Multi-Cloud -->
          <div class="mt-12 p-8 bg-white rounded-2xl shadow-lg border border-gray-200">
            <h4 class="text-2xl font-bold text-gray-900 mb-6 text-center">Почему мы работаем с разными облаками?</h4>
            <div class="grid md:grid-cols-3 gap-8">
              <div class="text-center">
                <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-2">Соответствие требованиям</h5>
                <p class="text-gray-600 text-sm">Российские облака для проектов с требованиями по локализации данных</p>
              </div>
              
              <div class="text-center">
                <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-2">Оптимизация затрат</h5>
                <p class="text-gray-600 text-sm">Выбираем наиболее экономичное решение для каждого конкретного проекта</p>
              </div>
              
              <div class="text-center">
                <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mx-auto mb-4 shadow-lg">
                  <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                  </svg>
                </div>
                <h5 class="text-lg font-bold text-gray-900 mb-2">Технологические возможности</h5>
                <p class="text-gray-600 text-sm">Используем лучшие сервисы каждой платформы для решения задач</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Dedicated Teams Section -->
    <section class="py-20 lg:py-32 bg-white relative overflow-hidden">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
          <h2 class="text-4xl lg:text-5xl font-bold text-gray-900 mb-6">Индивидуальные команды</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">Для больших проектов мы собираем персональную команду разработчиков под ваши задачи</p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div>
            <div class="bg-gradient-to-br from-blue-50 to-purple-50 rounded-3xl p-10">
              <h3 class="text-3xl font-bold text-gray-900 mb-8">Почему выбирают нас?</h3>
              <div class="space-y-6">
                <div class="flex items-center">
                  <div class="w-4 h-4 bg-gradient-to-r from-blue-500 to-purple-500 rounded-full mr-6"></div>
                  <span class="text-gray-700 text-lg font-medium">Быстрый подбор команды за 1-2 недели</span>
                </div>
                <div class="flex items-center">
                  <div class="w-4 h-4 bg-gradient-to-r from-green-500 to-blue-500 rounded-full mr-6"></div>
                  <span class="text-gray-700 text-lg font-medium">100% фокус на вашем проекте</span>
                </div>
                <div class="flex items-center">
                  <div class="w-4 h-4 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full mr-6"></div>
                  <span class="text-gray-700 text-lg font-medium">Экономия до 40% от штатных сотрудников</span>
                </div>
                <div class="flex items-center">
                  <div class="w-4 h-4 bg-gradient-to-r from-orange-500 to-red-500 rounded-full mr-6"></div>
                  <span class="text-gray-700 text-lg font-medium">Опытные специалисты с 3+ лет стажа</span>
                </div>
              </div>
            </div>
          </div>
          <div>
            <div class="bg-white rounded-3xl p-10 shadow-2xl border border-gray-200 relative overflow-hidden">
              <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-purple-500/10 rounded-full -translate-y-16 translate-x-16"></div>
              <div class="absolute bottom-0 left-0 w-24 h-24 bg-gradient-to-br from-green-500/10 to-blue-500/10 rounded-full translate-y-12 -translate-x-12"></div>
              <div class="relative z-10">
                <h3 class="text-3xl font-bold text-gray-900 mb-8">Состав команды</h3>
                <div class="grid grid-cols-2 gap-6">
                  <div class="text-center p-4 bg-gray-50 rounded-2xl">
                    <div class="w-12 h-12 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mx-auto mb-3 shadow-lg">
                      <span class="text-white text-sm font-bold">TL</span>
                    </div>
                    <div class="text-gray-900 font-semibold text-sm">Team Lead</div>
                  </div>
                  <div class="text-center p-4 bg-gray-50 rounded-2xl">
                    <div class="w-12 h-12 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mx-auto mb-3 shadow-lg">
                      <span class="text-white text-sm font-bold">BE</span>
                    </div>
                    <div class="text-gray-900 font-semibold text-sm">Backend</div>
                  </div>
                  <div class="text-center p-4 bg-gray-50 rounded-2xl">
                    <div class="w-12 h-12 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mx-auto mb-3 shadow-lg">
                      <span class="text-white text-sm font-bold">FE</span>
                    </div>
                    <div class="text-gray-900 font-semibold text-sm">Frontend</div>
                  </div>
                  <div class="text-center p-4 bg-gray-50 rounded-2xl">
                    <div class="w-12 h-12 bg-gradient-to-br from-orange-500 to-red-500 rounded-xl flex items-center justify-center mx-auto mb-3 shadow-lg">
                      <span class="text-white text-sm font-bold">QA</span>
                    </div>
                    <div class="text-gray-900 font-semibold text-sm">QA Engineer</div>
                  </div>
                </div>
                <div class="mt-8 text-center">
                  <div class="text-2xl font-bold text-gray-900 mb-2">от 1,200,000 ₽/мес</div>
                  <div class="text-gray-600">команда 4-6 человек</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="text-center mt-16">
          <NuxtLink to="/services" class="inline-flex items-center px-8 py-4 bg-gradient-to-r from-blue-600 to-purple-600 text-white rounded-2xl font-bold text-lg transition-all duration-300 hover:scale-105 hover:shadow-xl">
            Подробнее о командах
            <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
            </svg>
          </NuxtLink>
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
