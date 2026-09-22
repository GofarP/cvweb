<template>
  <div class="group relative pl-10 pb-12 last:pb-0">
    <!-- Line -->
    <div class="absolute left-[11px] top-4 bottom-0 w-[4px] bg-[#222] group-last:hidden"></div>

    <!-- Dot -->
    <div class="absolute left-0 top-1.5 w-7 h-7 rounded-full bg-[#0b8b45] border-[4px] border-[#222] shadow-[2px_2px_0_0_#222] z-10 group-hover:scale-110 group-hover:bg-amber-400 transition-transform duration-300"></div>

    <div class="bg-white border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] rounded-2xl p-6 transition-all duration-300 group-hover:-translate-y-1 group-hover:shadow-[6px_6px_0_0_#0b8b45]">
      <div class="mb-3">
        <span class="text-xs font-bold tracking-widest text-[#222] bg-amber-200 border-[2px] border-[#222] px-3 py-1 rounded-full inline-block shadow-[2px_2px_0_0_#222]">
          {{ year }}
        </span>
      </div>

      <h4 class="font-black text-2xl text-[#222] mt-2 mb-3">
        {{ title }}
      </h4>

      <p class="text-base text-[#444] font-medium leading-relaxed whitespace-pre-line text-left">
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