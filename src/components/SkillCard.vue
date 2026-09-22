<template>
  <div class="group relative p-0 transition-all duration-300 transform hover:-translate-y-2">
    <div class="w-32 h-36 bg-white border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] group-hover:shadow-[6px_6px_0_0_#0b8b45] rounded-2xl p-4 flex flex-col items-center justify-center relative transition-all duration-300">
      
      <div class="w-14 h-14 mb-3 flex items-center justify-center relative z-10 transition-transform duration-300 group-hover:scale-110 group-hover:-rotate-3">
        <img :src="img" :alt="label" class="w-full h-full object-contain filter drop-shadow-sm" />
      </div>
      
      <p class="text-center font-bold text-sm text-[#222] relative z-10">{{ label }}</p>
    </div>
  </div>
</template>

<script setup>
defineProps({
  label: String,
  img: String
});
</script>