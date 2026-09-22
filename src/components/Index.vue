<template>
  <div class="min-h-screen bg-[#f9f9f4] text-[#222] font-sans selection:bg-[#0b8b45] selection:text-white overflow-x-hidden">
    
    <!-- Floating Navigation & Present Button -->
    <div class="fixed right-4 md:right-8 top-1/2 -translate-y-1/2 z-50 flex flex-col items-center gap-4">
      <button @click="toggleFullScreen" class="bg-[#0b8b45] hover:bg-[#097339] text-white p-3 md:p-4 rounded-2xl border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] hover:-translate-y-1 transition-all duration-300 group relative" title="Presentation Mode">
        <i class="fas fa-expand text-lg" v-if="!isFullscreen"></i>
        <i class="fas fa-compress text-lg" v-else></i>
        <span class="absolute right-full mr-4 top-1/2 -translate-y-1/2 bg-white text-[#222] font-bold border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] px-4 py-2 text-xs md:text-sm rounded-xl opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none">
          {{ isFullscreen ? 'Keluar Presentasi' : 'Mode Presentasi' }}
        </span>
      </button>

      <div class="bg-white p-3 rounded-2xl border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] flex flex-col gap-4 hidden md:flex">
        <a href="#hero" class="w-4 h-4 border-2 border-[#222] rounded-full transition-all duration-300 hover:bg-[#0b8b45] hover:scale-125" :class="activeSection === 'hero' ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4]'"></a>
        <a href="#skills" class="w-4 h-4 border-2 border-[#222] rounded-full transition-all duration-300 hover:bg-[#0b8b45] hover:scale-125" :class="activeSection === 'skills' ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4]'"></a>
        <a href="#experience" class="w-4 h-4 border-2 border-[#222] rounded-full transition-all duration-300 hover:bg-[#0b8b45] hover:scale-125" :class="activeSection === 'experience' ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4]'"></a>
        <a href="#organization" class="w-4 h-4 border-2 border-[#222] rounded-full transition-all duration-300 hover:bg-[#0b8b45] hover:scale-125" :class="activeSection === 'organization' ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4]'"></a>
        <a href="#projects" class="w-4 h-4 border-2 border-[#222] rounded-full transition-all duration-300 hover:bg-[#0b8b45] hover:scale-125" :class="activeSection === 'projects' ? 'bg-[#0b8b45] scale-125' : 'bg-[#f9f9f4]'"></a>
      </div>
    </div>

    <!-- Hero / Header Section -->
    <section id="hero" class="relative min-h-screen flex items-center px-6 md:px-16 pt-20 pb-12 snap-start overflow-hidden observe-section">
      <div class="max-w-7xl mx-auto w-full flex flex-col-reverse md:flex-row items-center gap-12 relative z-10">
        
        <!-- Left Content -->
        <div class="w-full md:w-3/5 text-left reveal-fade-up">
          <!-- Badge -->
          <div class="inline-block bg-[#0b8b45] text-white font-bold text-sm md:text-base px-6 py-2 rounded-2xl border-[3px] border-[#222] shadow-[4px_4px_0_0_#222] mb-8 tracking-wider">
            HALLO, SAYA
          </div>
          
          <!-- Name -->
          <h1 class="text-6xl md:text-7xl lg:text-[5.5rem] font-black uppercase leading-[0.9] tracking-tighter mb-8 text-[#222] display-font drop-shadow-sm">
            Gofar Putra<br/>Perdana
          </h1>
          
          <!-- Description -->
          <p class="text-lg md:text-xl font-semibold mb-8 max-w-xl text-[#333] leading-relaxed">
            Lulusan Sekolah Tinggi Teknologi Indonesia Tanjungpinang berpengalaman pada pengembangan website dan aplikasi mobile. Saya memiliki keahlian di bidang frontend, backend, serta IOT.
          </p>
          
          <!-- Skills Text (from image) -->
          <div class="space-y-3 text-base md:text-lg text-[#333] font-medium">
            <p><span class="font-bold text-[#222]">Backend:</span> Laravel, ASP.net</p>
            <p><span class="font-bold text-[#222]">Frontend:</span> React (Next), Vue(Nuxt), TailwindCSS, Bootstrap 5</p>
            <p><span class="font-bold text-[#222]">Mobile:</span> React Native, Flutter, Kotlin Jetpack Compose</p>
            <p><span class="font-bold text-[#222]">IOT:</span> Arduino, Esp32, esp8266</p>
            <p><span class="font-bold text-[#222]">Database:</span> MYSQL, PostgreSQL</p>
          </div>

          <!-- Social Links -->
          <div class="flex flex-wrap gap-4 mt-10">
            <a href="mailto:gofarperdana83@gmail.com" class="flex items-center gap-2 px-6 py-3 rounded-xl bg-white border-[3px] border-[#222] hover:bg-[#0b8b45] hover:text-white hover:-translate-y-1 transition-all duration-300 shadow-[4px_4px_0_0_#222] font-bold">
              <i class="fas fa-envelope"></i> Email
            </a>
            <a href="https://github.com/GofarP" target="_blank" class="flex items-center gap-2 px-6 py-3 rounded-xl bg-white border-[3px] border-[#222] hover:bg-[#0b8b45] hover:text-white hover:-translate-y-1 transition-all duration-300 shadow-[4px_4px_0_0_#222] font-bold">
              <i class="fab fa-github"></i> GitHub
            </a>
            <a href="https://www.linkedin.com/in/gofar-putra-perdana-42555614a/" target="_blank" class="flex items-center gap-2 px-6 py-3 rounded-xl bg-white border-[3px] border-[#222] hover:bg-[#0b8b45] hover:text-white hover:-translate-y-1 transition-all duration-300 shadow-[4px_4px_0_0_#222] font-bold">
              <i class="fab fa-linkedin"></i> LinkedIn
            </a>
          </div>
        </div>

        <!-- Right Image -->
        <div class="w-full md:w-2/5 flex justify-center relative reveal-fade-up" style="transition-delay: 200ms;">
          <!-- Green Shape Background -->
          <div class="absolute w-[150%] md:w-[130%] h-[120%] bg-[#0b8b45] rounded-l-[100px] md:rounded-l-[150px] right-[-30%] top-[-10%] z-0 border-[3px] border-[#222]"></div>
          
          <!-- Profile Image -->
          <div class="relative z-10 w-64 h-80 md:w-80 md:h-[26rem] bg-red-600 border-[4px] border-[#222] shadow-[8px_8px_0_0_#222] overflow-hidden">
             <!-- Using Cloudinary for fast loading & compression -->
            <img src="https://res.cloudinary.com/xul7afpz/image/upload/q_auto,f_auto/gofar.jpg" alt="Profile" class="w-full h-full object-cover object-top" />
          </div>
        </div>
        
      </div>
    </section>

    <!-- Visual Divider -->
    <div class="w-full border-t-[3px] border-[#222] bg-[#0b8b45] h-6 shadow-[0_4px_0_0_#222] relative z-20"></div>

    <!-- Skills Section -->
    <section id="skills" class="px-6 max-w-5xl mx-auto observe-section" :class="isFullscreen ? 'min-h-screen pt-28 pb-12 flex flex-col' : 'py-20 flex flex-col'">
      <div class="reveal-fade-up">
        <SectionTitle title="Technical Skills" />
        
        <div class="mt-12 grid grid-cols-2 md:grid-cols-4 lg:grid-cols-5 gap-6">
          <SkillCard label="JavaScript" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg" />
          <SkillCard label="TypeScript" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/typescript/typescript-original.svg" />
          <SkillCard label="PHP" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/php/php-original.svg" />
          <SkillCard label="C#" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/csharp/csharp-original.svg" />
          <SkillCard label="C++" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/cplusplus/cplusplus-original.svg" />
          <SkillCard label="Python" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-original.svg" />
          <SkillCard label="Kotlin" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/kotlin/kotlin-original.svg" />
          <SkillCard label="HTML5" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/html5/html5-original.svg" />
          <SkillCard label="CSS3" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/css3/css3-original.svg" />
          <SkillCard label="React" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg" />
          <SkillCard label="Vue" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/vuejs/vuejs-original.svg" />
          <SkillCard label="Next.js" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nextjs/nextjs-original.svg" />
          <SkillCard label="Nuxt" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nuxtjs/nuxtjs-original.svg" />
          <SkillCard label="Tailwind" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/tailwindcss/tailwindcss-original.svg" />
          <SkillCard label="Laravel" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/laravel/laravel-original.svg" />
          <SkillCard label="ASP.NET" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/dotnetcore/dotnetcore-original.svg" />
          <SkillCard label="MySQL" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-original.svg" />
          <SkillCard label="PostgreSQL" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg" />
          <SkillCard label="Flutter" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/flutter/flutter-original.svg" />
          <SkillCard label="Android" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/android/android-original.svg" />
          <SkillCard label="Jetpack" img="https://developer.android.com/static/images/jetpack/compose/compose-logo.svg" />
          <SkillCard label="Arduino" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/arduino/arduino-original.svg" />
          <SkillCard label="IoT / ESP32" img="https://img.icons8.com/?size=100&id=11364&format=png&color=000000" />
          <SkillCard label="Git" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/git/git-original.svg" />
          <SkillCard label="Linux" img="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/linux/linux-original.svg" />
        </div>
      </div>
    </section>

    <!-- Visual Divider -->
    <div class="w-full border-t-[3px] border-[#222] bg-[#f9f9f4] h-6 shadow-[0_4px_0_0_#222] relative z-20"></div>

    <!-- Experience Section -->
    <section id="experience" class="px-6 max-w-5xl mx-auto observe-section" :class="isFullscreen ? 'min-h-screen pt-28 pb-12 flex flex-col' : 'py-20 flex flex-col'">
      <div class="reveal-fade-up">
        <SectionTitle title="Perjalanan Karir" />
        <div class="mt-12 space-y-6">
          <TimelineItem 
            year="Mei 2025 - Mei 2026" 
            title="Programmer - PT Ghimli Indonesia"
            description="• Mengembangkan sistem IoT dan API untuk kebutuhan perusahaan.&#10;• Membantu mengembangkan website dari beberapa department dan integrasi API saat dibutuhkan oleh perusahaan." 
          />
          <TimelineItem 
            year="Agustus 2023 - April 2025" 
            title="Staff IT - PT Wajah Siba Nusantara"
            description="• Mengembangkan modul internal: Akuntansi, absensi, grafik omzet, & pemesanan.&#10;• Maintenance hardware (printer, instalasi CCTV).&#10;• Mengembangkan 4 website logistik: mencargo.id, binusexpress.com, mbscargo.id, bestindomodern.com.&#10;• Membuat aplikasi mobile untuk cek harga dan tracking barang.&#10;• Membangun fitur tracking barang via website & chatbot otomatis ke WhatsApp.&#10;• Implementasi login dan absensi menggunakan Face Recognition.&#10;• Mengelola posting artikel di WordPress." 
          />
          <TimelineItem 
            year="2021 - 2025" 
            title="Freelancer Developer"
            description="• Membuat Aplikasi E-rapor online untuk manajemen sekolah.&#10;• Merancang prototype IoT gerbang otomatis dengan kendali aplikasi mobile.&#10;• Membuat prototype robot vacuum cleaner (ESP32) dengan kendali suara & mobile.&#10;• Mengembangkan aplikasi daftar kos yang terintegrasi dengan Mapbox.&#10;• Merancang prototype penyiram tanaman otomatis terhubung ke aplikasi mobile." 
          />
        </div>
      </div>
    </section>

    <!-- Organization Experience Section -->
    <section id="organization" class="px-6 max-w-5xl mx-auto observe-section" :class="isFullscreen ? 'min-h-screen py-24 flex flex-col justify-center' : 'py-20 flex flex-col'">
      <div class="reveal-fade-up">
        <SectionTitle title="Pengalaman Organisasi" />
        <div class="mt-12 space-y-6">
          <TimelineItem 
            year="2019 - 2021" 
            title="Divisi Hardware & Software - Mahasiswa Robotika STTI"
            description="• Merancang perangkat keras untuk kebutuhan robot dan IoT.&#10;• Mengembangkan aplikasi mobile untuk menerima dan mengirim data ke perangkat IoT atau robot." 
          />
        </div>
      </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="px-6 max-w-[90rem] mx-auto observe-section" :class="isFullscreen ? 'min-h-screen pt-28 pb-12 flex flex-col' : 'py-20 flex flex-col'">
      <div class="reveal-fade-up">
        <SectionTitle title="Karya & Portofolio" />
        <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-8 mt-12">
          
          <!-- PT Ghimli Indonesia -->
          <ProjectCard class="project-item"
            title="Machine App"
            company="PT Ghimli Indonesia"
            description="Aplikasi manajemen mesin terpusat. Mencakup dashboard pemantauan data mesin yang komprehensif serta landing page yang informatif."
            :images="['Machine App Dashboard.png', 'Machine App Machine List.png', 'Machine App Landing Page.png']"
          />

          <ProjectCard class="project-item"
            title="Cutting App"
            company="PT Ghimli Indonesia"
            description="Aplikasi pengaturan dan operasional mesin cutting berbasis Android dan web untuk meningkatkan efisiensi proses di lapangan."
            :images="['Cutting App Landing Page.png', 'Cutting App Android Management.png', 'Cutting App IOT.png']"
          />

          <ProjectCard class="project-item"
            title="IoT Sewer Attendance"
            company="PT Ghimli Indonesia"
            description="Sistem IoT untuk memindai dan mencatat kehadiran (attendance) operator sewing secara otomatis berdasarkan line produksi guna meningkatkan akurasi data."
            :images="['IOT_Sewer_Attendance.jpg']"
          />

          <ProjectCard class="project-item"
            title="IoT Fabric Stock (RFID)"
            company="PT Ghimli Indonesia"
            description="Sistem IoT berbasis RFID yang dirancang khusus untuk memantau proses stock in dan stock out dari bundle fabric secara real-time."
            :images="['IOT_Fabric_Stock.jpg']"
          />

          <!-- PT Wajah Siba Nusantara -->
          <ProjectCard class="project-item"
            title="Men Cargo (mencargo.id)"
            company="PT Wajah Siba Nusantara"
            description="Platform web operasional ekspedisi Men Cargo dengan fitur tracking resi, pengecekan tarif, manajemen manifes order, dan pengelolaan area data pengiriman."
            :images="['Men Cargo Landing Page.jpeg', 'Men Cargo Manifest Order.jpeg', 'Men Cargo Tracking Shipment.jpeg', 'Men Cargo Price Checking Feature.jpeg', 'Men Cargo Data area.jpeg']"
          />

          <ProjectCard class="project-item"
            title="MBS Cargo (mbscargo.id)"
            company="PT Wajah Siba Nusantara"
            description="Website resmi MBS Cargo yang dilengkapi sistem tracking resi pelanggan dan fitur manajemen layanan logistik secara komprehensif."
            :images="['MBS Cargo Landing Page.jpeg', 'MBS Cargo Tracking.jpeg', 'MBS Cargo Customer Feature.jpeg']"
          />

          <ProjectCard class="project-item"
            title="Binus Express (binusexpress.com)"
            company="PT Wajah Siba Nusantara"
            description="Platform web operasional untuk logistik Binus Express yang memfasilitasi kebutuhan pengiriman serta interaksi pelanggan."
            :images="['Binus Express Landing Page.png', 'Binus Express wilayah.png']"
          />

          <ProjectCard class="project-item"
            title="Aplikasi Mobile Tracking"
            company="PT Wajah Siba Nusantara"
            description="Aplikasi cross-platform berbasis Flutter untuk memfasilitasi cek harga tarif ekspedisi dan tracking keberadaan barang secara real-time."
            :images="['Siba Apps Mobile Tracking.jpeg', 'Mobile Price check feature.jpeg']"
          />

          <!-- Freelance -->
          <ProjectCard class="project-item"
            title="Sistem Informasi Manajemen Kantor (Simentor)"
            company="Freelance (Bawaslu Batam)"
            description="Sistem informasi berbasis web yang dirancang untuk mengoptimalkan alur koordinasi antar pegawai, pelacakan instruksi tugas, serta memfasilitasi evaluasi kinerja pegawai (Bawaslu Batam)."
            :images="['Simentor Coordination.png', 'Simentor User.png', 'Simetor Instruction.png']"
          />

          <ProjectCard class="project-item"
            title="Vending Machine IoT terintegrasi Mobile"
            company="Freelance"
            description="Prototipe sistem Vending Machine berbasis IoT yang terhubung dengan aplikasi mobile. Memiliki fitur kontrol akses berbasis role (Employee, Department, Machine) dan manajemen stok mesin secara real-time."
            :images="['Vending IOT Mobile Dashboard.png', 'Vending IOT Mobile Department Menu.png', 'Vending IOT Mobile Machine Menu.png', 'Vending IOT Role.png', 'Vending IOT Vending Machine.png', 'vending IOT Employee.png']"
          />

          <ProjectCard class="project-item"
            title="Politeam (Manajemen Politik)"
            company="Freelance"
            description="Aplikasi manajemen kampanye dan partai politik yang mencakup fitur dashboard analitik, pengelolaan data TPS, hingga pemantauan tim relawan secara real-time."
            :images="['Politeam Dashboard.jpeg', 'Politeam Political Party Feature.jpeg', 'Politeam TPS Feature.jpeg', 'Politeam Client Feature.jpeg']"
          />

        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="border-t-[3px] border-[#222] bg-[#0b8b45] py-12 text-center relative z-10">
      <div class="flex justify-center gap-6 mb-6">
        <a href="mailto:gofarperdana83@gmail.com" class="text-white hover:text-amber-200 transition-colors text-2xl"><i class="fas fa-envelope"></i></a>
        <a href="https://github.com/GofarP" target="_blank" class="text-white hover:text-amber-200 transition-colors text-2xl"><i class="fab fa-github"></i></a>
        <a href="https://www.linkedin.com/in/gofar-putra-perdana-42555614a/" target="_blank" class="text-white hover:text-amber-200 transition-colors text-2xl"><i class="fab fa-linkedin"></i></a>
      </div>
      <p class="text-white font-bold">© {{ new Date().getFullYear() }} Gofar Putra Perdana.</p>
    </footer>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import SectionTitle from '../components/SectionTitle.vue'
import SkillCard from '../components/SkillCard.vue'
import TimelineItem from '../components/TimelineItem.vue'
import ProjectCard from '../components/ProjectCard.vue'
import '@fortawesome/fontawesome-free/css/all.min.css';

const isFullscreen = ref(false);
const activeSection = ref('hero');
const sectionsList = ['hero', 'skills', 'experience', 'organization', 'projects'];

const toggleFullScreen = () => {
  if (!document.fullscreenElement) {
    document.documentElement.requestFullscreen().catch(err => {
      console.log(`Error attempting to enable fullscreen: ${err.message} (${err.name})`);
    });
  } else {
    document.exitFullscreen();
  }
};

const handleFullscreenChange = () => {
  isFullscreen.value = !!document.fullscreenElement;
};

const handleKeydown = (e) => {
  // Hanya aktif jika sedang dalam mode presentasi (layar penuh)
  if (!isFullscreen.value) return;

  if (['ArrowDown', 'PageDown'].includes(e.key)) {
    const currentIndex = sectionsList.indexOf(activeSection.value);
    if (currentIndex >= 0 && currentIndex < sectionsList.length - 1) {
      e.preventDefault();
      const nextSection = document.getElementById(sectionsList[currentIndex + 1]);
      if (nextSection) {
        nextSection.scrollIntoView({ behavior: 'smooth' });
        activeSection.value = sectionsList[currentIndex + 1];
      }
    }
  } else if (['ArrowUp', 'PageUp'].includes(e.key)) {
    const currentIndex = sectionsList.indexOf(activeSection.value);
    if (currentIndex > 0) {
      e.preventDefault();
      const prevSection = document.getElementById(sectionsList[currentIndex - 1]);
      if (prevSection) {
        prevSection.scrollIntoView({ behavior: 'smooth' });
        activeSection.value = sectionsList[currentIndex - 1];
      }
    }
  }
};

// Intersection Observer for animations
let observer;

onMounted(() => {
  document.addEventListener('fullscreenchange', handleFullscreenChange);
  document.addEventListener('keydown', handleKeydown);

  // Add Google Font for the display typography
  const link = document.createElement('link');
  link.href = 'https://fonts.googleapis.com/css2?family=Fredoka:wght@700&display=swap';
  link.rel = 'stylesheet';
  document.head.appendChild(link);

  const options = {
    root: null,
    rootMargin: '-10% 0px -10% 0px',
    threshold: 0.1
  };

  observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('is-visible');
        if (entry.target.id) {
          activeSection.value = entry.target.id;
        }
      }
    });
  }, options);

  document.querySelectorAll('.observe-section, .reveal-fade-up').forEach(section => {
    observer.observe(section);
  });
});

onUnmounted(() => {
  document.removeEventListener('fullscreenchange', handleFullscreenChange);
  document.removeEventListener('keydown', handleKeydown);
  if (observer) {
    observer.disconnect();
  }
});
</script>

<style>
/* Font for the main title */
.display-font {
  font-family: 'Fredoka', cursive, sans-serif;
}

/* Smooth scroll behavior */
html {
  scroll-behavior: smooth;
  background-color: #f9f9f4;
}

/* Custom scrollbar */
::-webkit-scrollbar {
  width: 12px;
}
::-webkit-scrollbar-track {
  background: #f9f9f4; 
  border-left: 2px solid #222;
}
::-webkit-scrollbar-thumb {
  background: #0b8b45; 
  border: 2px solid #222;
  border-radius: 6px;
}
::-webkit-scrollbar-thumb:hover {
  background: #097339; 
}

/* Presentation / Scroll Animations */
.reveal-fade-up {
  opacity: 0;
  transform: translateY(40px);
  transition: all 0.8s cubic-bezier(0.5, 0, 0, 1);
}
.is-visible.reveal-fade-up, .is-visible .reveal-fade-up {
  opacity: 1;
  transform: translateY(0);
}

/* Stagger project cards */
.is-visible .project-item:nth-child(1) { transition-delay: 100ms; }
.is-visible .project-item:nth-child(2) { transition-delay: 200ms; }
.is-visible .project-item:nth-child(3) { transition-delay: 300ms; }
.is-visible .project-item:nth-child(4) { transition-delay: 400ms; }
.is-visible .project-item:nth-child(5) { transition-delay: 500ms; }
.is-visible .project-item:nth-child(6) { transition-delay: 600ms; }
</style>