<template>
  <div class="mb-10 text-center relative inline-block">
    <h2 class="text-4xl md:text-5xl font-black text-[#222] display-font uppercase tracking-tight relative z-10">
      {{ title }}
    </h2>
    <!-- Green highlight behind text -->
    <div class="absolute left-[-5%] bottom-1 w-[110%] h-4 bg-[#0b8b45] -z-10 rotate-[-1deg]"></div>
  </div>
</template>

<script setup>
defineProps({
  title: String
})
</script>