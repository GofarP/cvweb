<template>
  <div class="group relative bg-white rounded-2xl border-[3px] border-[#222] overflow-hidden hover:-translate-y-2 transition-all duration-300 shadow-[6px_6px_0_0_#222] hover:shadow-[10px_10px_0_0_#0b8b45] flex flex-col h-full">
    
    <div v-if="images && images.length > 0" class="relative w-full h-56 overflow-hidden border-b-[3px] border-[#222] cursor-pointer group/img" @click="openModal">
      <div class="absolute inset-0 flex transition-transform duration-500 ease-in-out" :style="{ transform: `translateX(-${currentImageIndex * 100}%)` }">
        <img v-for="(img, idx) in images" :key="idx" :src="getImageUrl(img)" :alt="title" class="w-full h-full object-cover shrink-0" />
      </div>
      
      <!-- Overlay zoom icon -->
      <div class="absolute inset-0 bg-black/40 opacity-0 group-hover/img:opacity-100 transition-opacity flex items-center justify-center z-10">
        <i class="fas fa-search-plus text-white text-3xl drop-shadow-md"></i>
      </div>
      
      <!-- Carousel controls -->
      <button v-if="images.length > 1" @click.stop="prevImage" class="absolute left-3 top-1/2 -translate-y-1/2 bg-[#222] hover:bg-[#0b8b45] text-white rounded-full w-10 h-10 flex items-center justify-center transition-colors z-10 border-2 border-white">
        <i class="fas fa-chevron-left text-sm"></i>
      </button>
      <button v-if="images.length > 1" @click.stop="nextImage" class="absolute right-3 top-1/2 -translate-y-1/2 bg-[#222] hover:bg-[#0b8b45] text-white rounded-full w-10 h-10 flex items-center justify-center transition-colors z-10 border-2 border-white">
        <i class="fas fa-chevron-right text-sm"></i>
      </button>

      <!-- Indicators -->
      <div v-if="images.length > 1" class="absolute bottom-3 left-1/2 -translate-x-1/2 flex gap-2 z-10 bg-[#222] px-3 py-1.5 rounded-full border-2 border-white">
        <div v-for="(_, idx) in images" :key="'ind-'+idx" class="w-2 h-2 rounded-full transition-all duration-300" :class="idx === currentImageIndex ? 'bg-[#0b8b45] w-4' : 'bg-white'"></div>
      </div>
    </div>

    <div class="p-6 flex-1 flex flex-col relative z-10">
      <div v-if="company" class="mb-3">
        <span class="text-[10px] md:text-xs font-bold tracking-widest text-[#222] bg-amber-200 border-[2px] border-[#222] px-3 py-1 rounded-full inline-block shadow-[2px_2px_0_0_#222] uppercase">
          {{ company }}
        </span>
      </div>
      <h3 class="font-black text-2xl text-[#222] mb-3 leading-tight">{{ title }}</h3>
      <p class="text-base text-[#444] font-medium leading-relaxed flex-1" v-html="description"></p>
    </div>

    <!-- Image Lightbox Modal -->
    <Teleport to="body">
      <div v-if="isModalOpen" class="fixed inset-0 z-[9999] flex items-center justify-center p-4 md:p-12 bg-[#222]/80 backdrop-blur-sm" @click="closeModal">
        <div class="relative w-full max-w-6xl flex flex-col items-center justify-center" @click.stop>
          
          <!-- Close button -->
          <button @click="closeModal" class="absolute -top-12 right-0 md:-top-6 md:-right-6 bg-white text-[#222] hover:bg-red-500 hover:text-white rounded-full w-10 h-10 md:w-12 md:h-12 flex items-center justify-center transition-colors z-50 border-[3px] border-[#222] shadow-[4px_4px_0_0_#222]">
            <i class="fas fa-times text-xl"></i>
          </button>

          <!-- Main Image -->
          <div class="relative w-full bg-white border-[4px] border-[#222] shadow-[8px_8px_0_0_#222] overflow-hidden flex items-center justify-center rounded-xl" style="height: 80vh;">
            <img :src="getImageUrl(images[currentImageIndex])" class="max-w-full max-h-full object-contain" />
          </div>

          <!-- Modal Carousel controls -->
          <button v-if="images.length > 1" @click.stop="prevImage" class="absolute left-0 md:-left-6 top-1/2 -translate-y-1/2 bg-white hover:bg-[#0b8b45] hover:text-white text-[#222] rounded-full w-12 h-12 md:w-14 md:h-14 flex items-center justify-center transition-colors z-50 border-[3px] border-[#222] shadow-[4px_4px_0_0_#222]">
            <i class="fas fa-chevron-left text-xl md:text-2xl"></i>
          </button>
          <button v-if="images.length > 1" @click.stop="nextImage" class="absolute right-0 md:-right-6 top-1/2 -translate-y-1/2 bg-white hover:bg-[#0b8b45] hover:text-white text-[#222] rounded-full w-12 h-12 md:w-14 md:h-14 flex items-center justify-center transition-colors z-50 border-[3px] border-[#222] shadow-[4px_4px_0_0_#222]">
            <i class="fas fa-chevron-right text-xl md:text-2xl"></i>
          </button>
          
          <!-- Modal Indicators -->
          <div v-if="images.length > 1" class="absolute -bottom-16 left-1/2 -translate-x-1/2 flex gap-3 z-50 bg-white px-5 py-2.5 rounded-full border-[3px] border-[#222] shadow-[4px_4px_0_0_#222]">
            <button v-for="(_, idx) in images" :key="'modal-ind-'+idx" @click="currentImageIndex = idx" class="w-3 h-3 md:w-4 md:h-4 rounded-full transition-all duration-300 border-[2px] border-[#222]" :class="idx === currentImageIndex ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4] hover:bg-gray-300'"></button>
          </div>
          
        </div>
      </div>
    </Teleport>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const getImageUrl = (imageName) => {
  if (!imageName) return '';
  // Cloudinary otomatis mengubah spasi (' ') menjadi garis bawah ('_')
  const formattedName = imageName.replace(/ /g, '_');
  // Menambahkan q_auto dan f_auto agar Cloudinary otomatis mengkompres ukuran dan format gambar (WebP/AVIF)
  return `https://res.cloudinary.com/xul7afpz/image/upload/q_auto,f_auto/${formattedName}`;
};

const props = defineProps({
  title: String,
  description: String,
  company: String,
  images: {
    type: Array,
    default: () => []
  }
});

const currentImageIndex = ref(0);
const isModalOpen = ref(false);

const openModal = () => {
  if (props.images && props.images.length > 0) {
    isModalOpen.value = true;
    document.body.style.overflow = 'hidden';
  }
};

const closeModal = () => {
  isModalOpen.value = false;
  document.body.style.overflow = '';
};

const nextImage = () => {
  if (props.images.length > 0) {
    currentImageIndex.value = (currentImageIndex.value + 1) % props.images.length;
  }
};

const prevImage = () => {
  if (props.images.length > 0) {
    currentImageIndex.value = currentImageIndex.value === 0 ? props.images.length - 1 : currentImageIndex.value - 1;
  }
};
</script>