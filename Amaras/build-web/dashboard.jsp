<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http., javax.servlet." %>
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
        .nav-section {
            display: flex;
            align-items: center;
            gap: 2rem;
        }

        .nav-link {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: opacity 0.2s;
        }
        .nav-link:hover {
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
            width: 40%;
            display: flex;
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
            border-radius: 10px;
            padding: 2rem;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
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

        .profile-dropdown {
            position: relative;
        }

        .profile-trigger {
            background: rgba(255, 255, 255, 0.15);
            border: none;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 500;
            transition: background-color 0.2s;
        }

        .profile-trigger:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        .dropdown-menu {
            position: absolute;
            top: 100%;
            right: 0;
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            min-width: 200px;
            z-index: 1000;
            overflow: hidden;
            margin-top: 0.5rem;
            opacity: 0;
            visibility: hidden;
            transform: translateY(-10px);
            transition: all 0.2s ease;
        }

        .dropdown-menu.show {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-item {
            display: flex;
            align-items: center;
            padding: 0.75rem 1rem;
            color: #374151;
            text-decoration: none;
            transition: background-color 0.2s;
            gap: 0.75rem;
        }

        .dropdown-item:hover {
            background-color: #f3f4f6;
        }

        .dropdown-item svg {
            width: 16px;
            height: 16px;
            fill: #6b7280;
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

        /* Testimonials Section */
        .testimonials {
            background: #e0f2fe;
            padding: 3rem 2rem;
            border-radius: 30px;
            margin-bottom: 3rem;
        }

        .testimonials-title {
            text-align: center;
            color: #005b9f;
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 2rem;
        }

        .testimonials-container {
            max-width: 800px;
            margin: 0 auto;
        }

        .testimonial-card {
            background: white;
            padding: 1.5rem;
            border-radius: 16px;
            margin-bottom: 1rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            transition: all 0.2s ease;
        }

        .testimonial-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
        }

        .testimonial-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 0.75rem;
        }

        .testimonial-name {
            font-weight: 600;
            color: #005b9f;
        }

        .testimonial-date {
            color: #64748b;
            font-size: 0.875rem;
        }

        .testimonial-message {
            color: #374151;
            margin-bottom: 0.75rem;
            line-height: 1.6;
        }

        .testimonial-footer {
            display: flex;
            justify-content: flex-end;
        }

        .reply-btn {
            color: #64748b;
            font-size: 0.875rem;
            cursor: pointer;
            transition: color 0.2s;
        }

        .reply-btn:hover {
            color: #005b9f;
        }

        .show-more-btn {
            display: block;
            margin: 2rem auto 0;
            background: #64748b;
            color: white;
            padding: 0.75rem 2rem;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .show-more-btn:hover {
            background: #475569;
            transform: translateY(-2px);
        }

            /* Footer */
        .footer {
            background: linear-gradient(135deg, #005b9f 100%);
            color: white;
            padding: 2rem;
            text-align: center;
            border-radius: 30px 30px 0 0;
        }

        .footer h2 {
            font-size: 2rem;
            font-weight: 700;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                gap: 1rem;
                text-align: center;
            }

            .nav-section {
                flex-wrap: wrap;
                justify-content: center;
            }

            .hero {
                padding: 2rem 1rem;
                text-align: center;
            }

            .hero h1 {
                font-size: 2rem;
            }

            .hero-logo {
                display: none;
            }

            .main-content {
                padding: 2rem 1rem;
            }

            .services-header {
                flex-direction: column;
                gap: 1rem;
                text-align: center;
            }

            .services-title {
                font-size: 2rem;
            }

            .services-grid {
                grid-template-columns: 1fr;
                gap: 1.5rem;
            }

            .testimonials {
                padding: 2rem 1rem;
            }
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .service-card, .testimonial-card {
            animation: fadeInUp 0.6s ease forwards;
        }

        .service-card:nth-child(2) {
            animation-delay: 0.1s;
        }

        .service-card:nth-child(3) {
            animation-delay: 0.2s;
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

        <nav class="nav-section">
            <a href="TentangKami.jsp" class="nav-link">Tentang Kami</a>
            <div class="profile-dropdown">
                <button class="profile-trigger" onclick="toggleDropdown()">
                    Profil
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M7 10L12 15L17 10H7Z"/>
                    </svg>
                </button>
                <div class="dropdown-menu" id="profileDropdown">
                    <a href="profil.jsp" class="dropdown-item">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3.9 c1.71 0 3.1 1.39 3.1 3.1s-1.39 3.1-3.1 3.1 -3.1-1.39-3.1-3.1S10.29 5.9 12 5.9zm0 13.3 c-2.5 0-4.71-1.23-6-3.07 .03-1.86 3.97-2.93 6-2.93s5.97 1.07 6 2.93 c-1.29 1.84-3.5 3.07-6 3.07z"/>
  </svg>
                        </svg>
                        Profil
                    </a>
                    <a href="help.jsp" class="dropdown-item">
                        <svg viewBox="0 0 24 24">
                            <path d="M11,18H13V16H11V18M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,6A4,4 0 0,0 8,10H10A2,2 0 0,1 12,8A2,2 0 0,1 14,10C14,12 11,11.75 11,15H13C13,12.75 16,12.5 16,10A4,4 0 0,0 12,6Z"/>
                        </svg>
                        FAQ
                    </a>
                    <a href="index.jsp" class="dropdown-item">
                        <svg viewBox="0 0 24 24">
                            
                            <path d="M16,17V14H9V10H16V7L21,12L16,17M14,2A2,2 0 0,1 16,4V6H14V4H5V20H14V18H16V20A2,2 0 0,1 14,22H5A2,2 0 0,1 3,20V4A2,2 0 0,1 5,2H14Z"/> 
                        </svg>
                        Log Out
                    </a>
                </div>
            </div>
        </nav>

    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Pelayanan Sosial Berbasis Cinta dan Ilmu</h1>
            <p>Yayasan Amaras Harapan Bangsa hadir untuk membangun masyarakat melalui Posyandu, KBM, dan Sekolah Lansia.</p>
            <a href="Donasi.jsp" class="donate-btn" id="donateBtn">Donasi Sekarang!</a>
        </div>
        <div class="hero-image">
            <!-- Using image file for logo in hero section -->
            <img src="logo.png" alt="Yayasan Amaras Logo" style="width: 80%; max-width: 300px; opacity: 0.7;">
        </div>
    </section>

    <!-- Services Section -->
    <section class="services">
        <div class="services-header">
            <h2 class="services-title">Layanan Kami</h2>
            <div class="donation-counter">
                <h2 class="services-title">Total Donasi: </h2>
                <span class="donation-amount">Rp.0</span>
            </div>
        </div>
        <div class="services-grid">
            <div class="service-card">
                <div class="service-icon">
                    <svg width="60" height="60" viewBox="0 0 100 100" fill="#1a56a2">
                        <path d="M35,40 C35,25 65,25 65,40 C65,55 80,60 80,75 C80,90 20,90 20,75 C20,60 35,55 35,40" stroke="#1a56a2" stroke-width="5" fill="none"></path>
                        <circle cx="50" cy="25" r="10" fill="#1a56a2"></circle>
                    </svg>
                </div>
                <h3 class="service-title">Posyandu</h3>
                <p class="service-description">Pelayanan Ibu dan Anak</p>
            </div>
            <div class="service-card">
                <div class="service-icon">
                    <svg width="60" height="60" viewBox="0 0 100 100" fill="#1a56a2">
                        <rect x="20" y="20" width="60" height="60" rx="5" stroke="#1a56a2" stroke-width="5" fill="none"></rect>
                        <line x1="20" y1="40" x2="80" y2="40" stroke="#1a56a2" stroke-width="5"></line>
                        <line x1="50" y1="20" x2="50" y2="80" stroke="#1a56a2" stroke-width="5"></line>
                    </svg>
                </div>
                <h3 class="service-title">KBM</h3>
                <p class="service-description">Kelompok Belajar Masyarakat</p>
            </div>
            <div class="service-card">
                <div class="service-icon">
                    <svg width="60" height="60" viewBox="0 0 100 100" fill="#1a56a2">
                        <circle cx="50" cy="40" r="20" stroke="#1a56a2" stroke-width="5" fill="none"></circle>
                        <path d="M30,35 L35,45 M65,45 L70,35" stroke="#1a56a2" stroke-width="3"></path>
                        <path d="M40,50 C45,55 55,55 60,50" stroke="#1a56a2" stroke-width="3" fill="none"></path>
                        <path d="M20,80 C20,65 80,65 80,80" stroke="#1a56a2" stroke-width="5" fill="none"></path>
                    </svg>
                </div>
                <h3 class="service-title">Sekolah Lansia</h3>
                <p class="service-description">Edukasi dan kegiatan aktif untuk Lansia</p>
            </div>
        </div>
    </section>

   <!-- Testimonials Section -->
        <section class="testimonials">
            <h2 class="testimonials-title">Harapan Dari Mereka</h2>
            <div class="testimonials-container">
                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <div class="testimonial-name">Hamba Allah</div>
                        <div class="testimonial-date">21-05-2025</div>
                    </div>
                    <div class="testimonial-message">Semoga amalannya menjadi berkah 🙏</div>
                    <div class="testimonial-footer">
                        <span class="reply-btn">Balas</span>
                    </div>
                </div>

                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <div class="testimonial-name">Cinta Damai</div>
                        <div class="testimonial-date">22-05-2025</div>
                    </div>
                    <div class="testimonial-message">Semoga para lansia sehat selalu 🙌</div>
                    <div class="testimonial-footer">
                        <span class="reply-btn">Balas</span>
                    </div>
                </div>

                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <div class="testimonial-name">Akbar Pahlawan</div>
                        <div class="testimonial-date">24-05-2025</div>
                    </div>
                    <div class="testimonial-message">Sehat-sehat ya buat orang yang selalu berbagi untuk orang yag membutuhkan</div>
                    <div class="testimonial-footer">
                        <span class="reply-btn">Balas</span>
                    </div>
                </div>

                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <div class="testimonial-name">GVS</div>
                        <div class="testimonial-date">23-05-2025</div>
                    </div>
                    <div class="testimonial-message">Saya udah beberapa kali berdonasi disini, semoga yayasannya selalu berkah</div>
                    <div class="testimonial-footer">
                        <span class="reply-btn">Balas</span>
                    </div>
                </div>

                <button class="show-more-btn">Tampilkan Lebih</button>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        
    </footer>

    <script>
        function toggleDropdown() {
            const dropdown = document.getElementById('profileDropdown');
            dropdown.classList.toggle('show');
        }

        // Close dropdown when clicking outside
        window.addEventListener('click', function(event) {
            const dropdown = document.getElementById('profileDropdown');
            const trigger = document.querySelector('.profile-trigger');
            
            if (!trigger.contains(event.target) && !dropdown.contains(event.target)) {
                dropdown.classList.remove('show');
            }
        });

        // Reply button functionality
        document.querySelectorAll('.reply-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                const name = this.closest('.testimonial-card').querySelector('.testimonial-name').textContent;
                alert(Membalas pesan dari ${name}...);
            });
        });

        // Show more functionality
        document.querySelector('.show-more-btn').addEventListener('click', function() {
            alert('Menampilkan lebih banyak testimoni...');
        });

        // Smooth scrolling for navigation
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Donation button functionality
        document.querySelector('.donate-btn').addEventListener('click', function(e) {
            e.preventDefault();
            alert('Terima kasih atas niat baik Anda! Halaman donasi akan segera dibuka.');
        });
    </script>
</body>
</html>
