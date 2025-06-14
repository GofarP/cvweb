<template>
    <div class="bg-white rounded-lg shadow-md p-4 mb-4">
      <h3 class="font-bold text-base mb-2">{{ title }}</h3>
      <p class="text-sm text-gray-700">{{ description }}</p>
    </div>
  </template>
  
  <script setup>
  defineProps({
    title: String,
    description: String
  });
  </script>
  