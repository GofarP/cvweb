<template>
  <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 hover:shadow-lg transition-all duration-300 flex flex-col h-full">
    <div class="flex-1">
        <h3 class="font-bold text-lg text-cyan-700 mb-3">{{ title }}</h3>
        
        <p class="text-sm text-gray-600 leading-relaxed" v-html="description"></p>
        
    </div>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  description: String
});
</script>