<template>
    <div class=" bg-gray-50 text-gray-800">
        <header class="bg-cyan-600 text-white py-10 text-center">
            <img src="/src/image/gofar.jpg" alt="Profile" class="w-24 h-24 rounded-full mx-auto mb-4" />
            <h1 class="text-3xl font-bold">Gofar Putra Perdana</h1>
            <p class="text-sm mt-1">Web Developer | Mobile Developer | IoT Developer</p>

            <div class="flex flex-wrap gap-6 justify-center mt-4">
                <a href="" target="_blank" class="flex items-center gap-2 text-white hover:text-cyan-300">
                    <i class="fas fa-envelope"></i>
                    <span>gofarperdana83@gmail.com</span>
                </a>

                <a href="https://github.com/GofarP" target="_blank"
                    class="flex items-center gap-2 text-white hover:text-cyan-300">
                    <i class="fab fa-github"></i>
                    <span>GofarP</span>
                </a>

                <a href="https://www.linkedin.com/in/gofar-putra-perdana-42555614a/" target="_blank" class="flex items-center gap-2 text-white hover:text-cyan-300">
                    <i class="fab fa-linkedin"></i>
                    <span>Gofar Putra Perdana </span>
                </a>
            </div>

        </header>

        <section class="py-6 text-center">
            <SectionTitle title="Tentang Saya" />
            <p class="max-w-3xl mx-auto text-md">
                Lulusan S1 Teknik Informatika dari STTI Tanjungpinang, tahun 2021. Memiliki pengalaman dalam
                pengembangan website menggunakan Laravel dan Livewire, serta dapat mengembangkan aplikasi mobile
                berbasis Flutter dan juga dapat membuat API. Selain itu juga mempunyai kemampuan dalam perancangan
                Internet Of Things dan robotik menggunakan mikrokontroller seperti Arduino dan ESP32. Berorientasi pada
                solusi dan mampu bekerja serta menghasilkan aplikasi secara efektif.
            </p>
        </section>

        <section class="py-6 text-center">
            <SectionTitle title="Keahlian" />
            <div class="flex flex-wrap justify-center gap-4 mt-4">
                <SkillCard label="Flutter"
                    img="https://img.icons8.com/?size=100&id=7I3BjCqe9rjG&format=png&color=000000" />
                <SkillCard label="Laravel"
                    img="https://img.icons8.com/?size=100&id=lRjcvhvtR81o&format=png&color=000000" />
                <SkillCard label="REST API" img="https://cdn-icons-png.flaticon.com/128/15435/15435224.png" />
                <SkillCard label="GIT" img="https://img.icons8.com/?size=100&id=20906&format=png&color=000000" />
                <SkillCard label="Arduino & IOT"
                    img="https://img.icons8.com/?size=100&id=13444&format=png&color=000000" />
                <SkillCard label="Vue" img="https://img.icons8.com/?size=100&id=dzfo6UeXW9h7&format=png&color=000000" />
            </div>
        </section>

        <section class="py-6 px-6">
            <SectionTitle title="Pengalaman Kerja" />
            <TimelineItem year="Agustus 2023 - April 2025" title="Staff IT - PT Wajah Siba Nusantara" description="
          Mengembangkan dan menambahkan fitur pada website internal kantor seperti:
          - Modul akuntansi, absensi, grafik omzet, dan pemesanan.
          - Pemeliharaan hardware (printer, instalasi CCTV).
          - Pengembangan beberapa website baru:
             - https://mencargo.id/
             - https://www.binusexpress.com/
             - https://mbscargo.id
             - https://bestindomodern.com
          - Membuat aplikasi mobile untuk cek harga dan tracking barang.
          - Fitur tracking barang berdasarkan website dan chatbot otomatis yang langsung terkirim ke WhatsApp pengguna.
          - Fitur login dan absensi menggunakan face recognition.
          - Posting artikel di WordPress.
          " />
            <TimelineItem year="2021 - 2023" title="Freelancer" description="
          - Membuat Aplikasi E-rapor online untuk sekolah.
          - Membuat prototype IOT gerbang otomatis yang dapat dikendalikan dari aplikasi mobile.
          - Membuat prototype robot vacuum cleaner dengan ESP32 yang dapat dikendalikan dengan suara dan aplikasi mobile.
          - Membuat aplikasi daftar kos yang diintegrasikan dengan Mapbox sebagai penunjuk lokasi kos.
          - Membuat prototype penyiram tanaman otomatis yang terhubung dengan aplikasi mobile.
          " />
        </section>

        <section class="py-6 px-6">
            <SectionTitle title="Pengalaman Organisasi" />
            <TimelineItem year="2019 - 2021" title="Divisi Hardware & Software - Mahasiswa Robotika STTI Tanjungpinang"
                description="
          - Merancang perangkat keras untuk kebutuhan robot dan IoT.
          - Mengembangkan aplikasi mobile untuk menerima dan mengirim data ke perangkat IoT atau robot.
          " />
        </section>

        <section class="py-6 px-6">
            <SectionTitle title="Proyek" />
            <ProjectCard title="Website Perusahaan - Mencargo, BinusExpress, MBSCargo, Bestindo Furniture"
                description="Website untuk mendukung operasional logistik dan furniture. Link: mencargo.id, binusexpress.id, mbscargo.id, bestindofurniture.com" />
            <ProjectCard title="Aplikasi Mobile Tracking"
                description="Aplikasi Flutter untuk cek harga dan tracking barang secara real-time" />
            <ProjectCard title="Pengembangan API Notifikasi WhatsApp"
                description="Mengembangkan API yang terintegrasi dengan WhatsApp untuk mengirim notifikasi otomatis kepada pelanggan mengenai status pengiriman barang dan tracking barang" />
            <ProjectCard title="Pengembangan IoT"
                description="Merancang dan mengembangkan berbagai prototype IoT seperti sistem penyiram tanaman otomatis berbasis mobile, gerbang otomatis yang dapat dikendalikan dari jarak jauh melalui aplikasi, serta robot vacuum cleaner berbasis ESP32 yang dikontrol dengan suara dan aplikasi mobile. Seluruh perangkat terhubung dan dikendalikan melalui jaringan internet untuk mendukung otomasi dan efisiensi." />
        </section>

        <footer class="bg-cyan-600 text-white text-center p-6">
            <p>© 2025 Gofar Putra Perdana. All rights reserved.</p>
        </footer>
    </div>
</template>

<script setup>
import SectionTitle from '../components/SectionTitle.vue'
import SkillCard from '../components/SkillCard.vue'
import TimelineItem from '../components/TimelineItem.vue'
import ProjectCard from '../components/ProjectCard.vue'
import '@fortawesome/fontawesome-free/css/all.min.css';

</script>