<template>
  <div class="min-h-screen bg-white text-gray-900">
    <!-- Header -->
    <header class="bg-white border-b border-gray-200 sticky top-0 z-50 shadow-sm">
      <nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
          <div class="flex items-center">
            <div class="flex-shrink-0">
              <h1 class="text-2xl font-bold text-gray-900">
                <span class="text-blue-600">Tech</span>Bit
              </h1>
            </div>
          </div>
          <div class="hidden md:block">
            <div class="ml-10 flex items-baseline space-x-8">
              <NuxtLink to="/" class="text-gray-700 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors duration-200">Главная</NuxtLink>
              <NuxtLink to="/services" class="text-gray-700 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors duration-200">Услуги</NuxtLink>
              <NuxtLink to="/about" class="text-gray-700 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors duration-200">О нас</NuxtLink>
              <NuxtLink to="/contact" class="text-gray-700 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors duration-200">Контакты</NuxtLink>
            </div>
          </div>
          <div class="md:hidden">
            <!-- Mobile menu button -->
            <button class="text-gray-700 hover:text-blue-600">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
              </svg>
            </button>
          </div>
        </div>
      </nav>
    </header>

    <!-- Main Content -->
    <main class="flex-1">
      <slot />
    </main>

    <!-- Footer -->
    <footer class="bg-gray-50 border-t border-gray-200">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
          <div class="col-span-1 md:col-span-2">
            <h3 class="text-lg font-semibold text-gray-900 mb-4">
              <span class="text-blue-600">Tech</span>Bit
            </h3>
            <p class="text-gray-600 text-sm leading-relaxed max-w-md">
              Экспертные услуги в области автоматизации, DevOps и веб-разработки для вашего бизнеса. 
              Мы помогаем компаниям расти через технологии.
            </p>
          </div>
          <div>
            <h4 class="text-sm font-semibold text-gray-900 mb-4">Услуги</h4>
            <ul class="space-y-2 text-sm">
              <li><a href="/services" class="text-gray-600 hover:text-blue-600 transition-colors duration-200">Автоматизация</a></li>
              <li><a href="/services" class="text-gray-600 hover:text-blue-600 transition-colors duration-200">DevOps</a></li>
              <li><a href="/services" class="text-gray-600 hover:text-blue-600 transition-colors duration-200">Веб-разработка</a></li>
            </ul>
          </div>
          <div>
            <h4 class="text-sm font-semibold text-gray-900 mb-4">Контакты</h4>
            <ul class="space-y-2 text-sm">
              <li class="text-gray-600">info@techbit.com</li>
              <li class="text-gray-600">+7 (999) 123-45-67</li>
              <li class="text-gray-600">Москва, Россия</li>
            </ul>
          </div>
        </div>
        <div class="border-t border-gray-200 mt-8 pt-8">
          <p class="text-gray-500 text-sm text-center">
            © 2024 TechBit. Все права защищены.
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
// Default layout для всех страниц
</script>
