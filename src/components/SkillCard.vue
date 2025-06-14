<template>
    <div class="w-28 h-36 bg-white rounded-xl shadow p-4 flex flex-col items-center justify-center">
      <img :src="img" alt="" class="w-10 h-10 object-contain mb-2" />
      <p class="text-center font-semibold text-sm">{{ label }}</p>
    </div>
  </template>
  
  <script setup>
  defineProps({
    label: String,
    img: String
  });
  </script>
  