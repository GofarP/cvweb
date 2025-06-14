<template>
  <div class="px-4 sm:px-6 lg:px-8 mb-6">
    <div class="flex flex-col sm:flex-row gap-2 sm:gap-4">
      <div class="w-36 font-bold text-sm text-gray-700">{{ year }}</div>
      <div class="flex-1">
        <h4 class="font-semibold text-base mb-1">{{ title }}</h4>
        <p class="text-sm text-gray-600 whitespace-pre-line">{{ description }}</p>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  year: String,
  title: String,
  description: String
})
</script>