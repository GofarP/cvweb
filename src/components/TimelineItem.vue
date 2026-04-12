<template>
  <div class="relative pl-8 pb-12 group last:pb-0">

    <div class="absolute left-[7px] top-2 h-full w-0.5 bg-gray-300 group-last:hidden"></div>

    <div class="absolute left-0 top-1.5 w-4 h-4 rounded-full bg-cyan-600 border-4 border-white shadow-sm z-10"></div>

    <div class="flex flex-col gap-1">
      <div class="mb-1">
        <span
          class="text-xs font-bold uppercase tracking-wider text-cyan-700 bg-cyan-50 px-3 py-1 rounded-full shadow-sm">
          {{ year }}
        </span>
      </div>

      <h4 class="font-bold text-lg text-gray-900 mt-1">
        {{ title }}
      </h4>

      <p class="mt-2 text-sm text-gray-600 leading-relaxed whitespace-pre-line text-left">
        {{ description }}
      </p>
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