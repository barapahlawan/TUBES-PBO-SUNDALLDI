<%-- 
    Document   : TentangKami
    Created on : 22 May 2025, 12.29.06
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yayasan Amaras Harapan Bangsa</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f5f5;
        }

        /* Header Styling */
        header {
            background: linear-gradient(to right, #1a56a2, #4285f4);
            color: white;
            padding: 1rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-container {
            display: flex;
            align-items: center;
        }

        .logo-container img {
            height: 50px;
            margin-right: 10px;
        }

        .logo-text h1 {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 0;
        }

        .logo-text h2 {
            font-size: 1rem;
            font-weight: normal;
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin-left: 2rem;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }

        nav ul li a:hover {
            opacity: 0.8;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(to right, #1a56a2, #4285f4);
            color: white;
            padding: 4rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            width: 55%;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            line-height: 1.2;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .donate-btn {
            background-color: white;
            color: #1a56a2;
            padding: 0.8rem 2rem;
            border-radius: 50px;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            font-size: 1.1rem;
        }

        .donate-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .hero-image {
            width: 80%;
            justify-content: center;
        }

        .hero-image img {
            width: 80%;
            max-width: 300px;
            opacity: 0.7;
        }

        /* Services Section */
        .services {
            padding: 2rem 5%;
        }

        .services-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        .services-title {
            font-size: 2rem;
            color: #1a56a2;
        }

        .donation-counter {
            display: flex;
            align-items: center;
        }

        .donation-counter img {
            width: 40px;
            margin-right: 10px;
        }

        .donation-amount {
            font-size: 2rem;
            color: #1a56a2;
            font-weight: bold;
            padding-left: 20px;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
        }

        .service-card {
            background-color: white;
            border-radius: 12px;
            padding: 2rem;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        
        service-cards {
            background-color: white;
            border-radius: 12px;
            padding: 2rem;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .service-icon {
            font-size: 3rem;
            color: #1a56a2;
            margin-bottom: 1rem;
        }

        .service-title {
            font-size: 1.5rem;
            color: #1a56a2;
            margin-bottom: 0.5rem;
        }

        .service-description {
            color: #666;
            font-size: 0.9rem;
        }

        /* Footer */
        footer {
            background: linear-gradient(to right, #1a56a2, #4285f4);
            color: white;
            padding: 1rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .register-text {
            font-size: 1.2rem;
        }

        .register-btn {
            background-color: white;
            color: #1a56a2;
            padding: 0.8rem 2rem;
            border-radius: 50px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .register-btn:hover {
            background-color: #f5f5f5;
        }

        @media (max-width: 768px) {
            .hero {
                flex-direction: column;
                padding: 7rem 5%;
            }
            
            .hero-content, .hero-image {
                width: 100%;
                text-align: center;
            }
            
            .hero-image {
                margin-top: 2rem;
            }
            
            .services-grid {
                grid-template-columns: 1fr;
            }
            
            footer {
                flex-direction:column;
                text-align: center;
                gap: 1rem;
            }
            

                    
      </style>
</head>
<body>
    <!-- Header with Logo and Navigation -->
    <header>
        <div class="logo-container">
            <div class="logo-icon">
                <!-- Using image file for logo -->
                <img src="logo.png" alt="Yayasan Amaras Logo" height="50">
            </div>
            <div class="logo-text">
                <h1>YAYASAN AMARAS</h1>
                <h2>HARAPAN BANGSA</h2>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Beranda</a></li>
                <li><a href="Login.jsp">Masuk</a></li>
            </ul>
        </nav>
    </header>

    

    <!-- Services Section -->
    <section class="services">       
        <div class="services-grid">
            <div class="service-card">
                <h3 class="service-title">Tentang Kami</h3>
                <p class="service-description">Yayasan Amaras adalah lembaga sosial yang berdedikasi tinggi dalam memberikan pelayanan kepada masyarakat.Didirikan dengan semangat kemanusiaan dan kepedulian sosial, Yayasan Amara hadir sebagai mitra bagi masyarakat untuk membangun kehidupan yang lebih baik melalui berbagai program pelayanan yang komprehensif dan berkelanjutan.Sejak awal berdiri, kami berkomitmen untuk menciptakan perubahan positif dalam masyarakat dengan fokus padatiga pilar utama: kesehatan masyarakat, pendidikan, dan kesejahteraan lansia. Melalui pendekatan holistik dan partisipatif, kami berupaya meningkatkan kualitas hidup masyarakat dari berbagai kelompok usia.</p>
                <h3 class="service-title">Visi Misi</h3>
                <p class="service-description">1. Edukasi dan kegiatan aktif untuk Lansia</p>
                <p class="service-description">2. Kesejahteraan untuk masyarakat</p>
                <p class="service-description">3. Kesehatan</p>
            </div>
            <div class="hero-image">
            <!-- Using image file for logo in hero section -->
                <img src="logo.png" alt="Yayasan Amaras Logo" style="width: 150%; max-width: 300px; opacity: 1;">
            </div>
            <div class ="service-card">
                    <h4 class = "service-title">Kontak</h4>
                    <p><strong>085783982973</strong></p>
                    <h4  class = "service-title">Alamat</h4>
                    <p><strong>Desa Pananggapan</strong></p>
             </div>
            <div class="service-card">
                <h3 class="service-title">Kegiatan Kami</h3>
                    <div style="overflow-x: auto; white-space: nowrap;">
                      <div style="display: inline-block; margin-right: 10px; text-align: center;">
                        <img src="smile.jpg" width="150">
                      </div>
                      <div style="display: inline-block; margin-right: 10px; text-align: center;">
                        <img src="smile.jpg" width="150">
                      </div>
                      <div style="display: inline-block; margin-right: 10px; text-align: center;">
                        <img src="smile.jpg" width="150">
                      </div>
                        <div style="display: inline-block; margin-right: 10px; text-align: center;">
                        <img src="smile.jpg" width="150">
                      </div>
                      <div style="display: inline-block; margin-right: 10px; text-align: center;">
                        <img src="smile.jpg" width="150">
                      </div>
                    </div>
            </div>
        </div>
    </section>

    
    
    <!-- Footer -->
    <footer>
        <div class="register-text">Daftarkan Diri Anda!</div>
        <a href="Register.jsp" class="register-btn">Daftar</a>
    </footer>

    <script>
        // JavaScript untuk menangani klik tombol donasi
        document.getElementById('donateBtn').addEventListener('click', function() {
            // Simulasi form donasi atau redirect ke halaman donasi
            alert('Terima kasih atas niat baik Anda! Halaman donasi akan segera dibuka.');
        });

        // Animasi counter donasi
        const donationAmount = document.querySelector('.donation-amount');
        const targetAmount = 12250000;
        let currentAmount = 0;
        const duration = 2000; // ms
        const frameRate = 20; // fps
        const increment = targetAmount / (duration / 1000 * frameRate);

        function animateDonationCounter() {
            if (currentAmount < targetAmount) {
                currentAmount += increment;
                if (currentAmount > targetAmount) {
                    currentAmount = targetAmount;
                }
                
                // Format angka dengan pemisah ribuan
                const formattedAmount = new Intl.NumberFormat('id-ID').format(Math.floor(currentAmount));
                donationAmount.textContent = Rp. ${formattedAmount};
                
                setTimeout(animateDonationCounter, 1000 / frameRate);
            }
        }

        // Mulai animasi saat halaman dimuat
        window.addEventListener('load', function() {
            setTimeout(animateDonationCounter, 500);
        });

        // Deteksi scroll untuk efek parallax sederhana
        window.addEventListener('scroll', function() {
            const heroImage = document.querySelector('.hero-image');
            const scrollPosition = window.scrollY;
            
            if (scrollPosition < 500) {
                heroImage.style.transform = translateY(${scrollPosition * 0.1}px);
            }
        });

        // Tambahkan efek hover pada kartu layanan
        const serviceCards = document.querySelectorAll('.service-card');
        serviceCards.forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.backgroundColor = '#f0f7ff';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.backgroundColor = 'white';
            });
        });
    </script>
</body>
</html>