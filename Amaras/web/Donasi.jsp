<%-- 
    Document   : Donasi
    Created on : 22 May 2025, 12.57.12
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yayasan Amaras - Donasi</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
            color: #333;
        }
        
        .header {
            background-color: #00a0e4;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo-container {
            display: flex;
            align-items: center;
        }
        
        .logo {
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }
        
        .title {
            font-size: 24px;
            font-weight: bold;
        }
        
        .nav {
            display: flex;
            gap: 20px;
        }
        
        .nav-link {
            color: white;
            text-decoration: none;
            padding: 5px 10px;
        }
        
        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 0 20px;
            position: relative;
            z-index: 1;
        }
        
        .background-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0.1;
            z-index: -1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        h1 {
            color: #0066a1;
            margin-bottom: 5px;
        }
        
        .subheading {
            margin-bottom: 30px;
            color: #444;
        }
        
        .section-title {
            margin: 20px 0 15px;
            color: #0066a1;
            font-weight: bold;
        }
        
        .donation-options {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .donation-button {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .donation-button:hover {
            border-color: #00a0e4;
            box-shadow: 0 2px 5px rgba(0, 160, 228, 0.2);
        }
        
        .custom-amount {
            margin-top: 15px;
            margin-bottom: 30px;
            width: 100%;
        }
        
        .custom-input {
            display: flex;
            align-items: center;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 0 15px;
            width: 100%;
        }
        
        .currency {
            font-weight: bold;
            color: #555;
        }
        
        .amount-input {
            border: none;
            padding: 15px 5px;
            font-size: 16px;
            flex-grow: 1;
            outline: none;
        }
        
        .payment-methods {
            margin-bottom: 30px;
        }
        
        .payment-options {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .payment-option {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            width: 100px;
            transition: all 0.3s ease;
        }
        
        .payment-option:hover {
            border-color: #00a0e4;
            box-shadow: 0 2px 5px rgba(0, 160, 228, 0.2);
        }
        
        .payment-icon {
            width: 40px;
            height: 40px;
            margin-bottom: 5px;
        }
        
        .payment-label {
            font-size: 14px;
            color: #555;
        }
        
        .bank-options {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 15px;
        }
        
        .bank-option {
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        
        .radio-input {
            margin-right: 5px;
        }
        
        .submit-button {
            background-color: #00a0e4;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            float: right;
            display: flex;
            align-items: center;
            transition: background-color 0.3s ease;
        }
        
        .submit-button:hover {
            background-color: #0080b4;
        }
        
        .arrow-icon {
            margin-left: 10px;
        }
        
        .active {
            border-color: #00a0e4;
            background-color: #e6f7ff;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo-container">
            <img src="logo.png" alt="Yayasan Amaras Logo" height="50">
            <div class="title">YAYASAN AMARAS</div>
        </div>
        <div class="nav">
            <a href="#" class="nav-link">Beranda</a>
            <a href="index.jsp" class="nav-link">Keluar</a>
        </div>
    </div>
    
    <div class="container">
        <div class="background-image">
            <img src="logo.png" alt="Yayasan Amaras Logo" height="400">
        </div>
        
        <h1>Mari berdonasi!</h1>
        <p class="subheading">Isi form di bawah ini untuk memberikan donasi kepada Yayasan Amaras</p>
        
        <div class="donation-section">
            <div class="section-title">Donasi Terbaik Anda</div>
            <div class="donation-options">
                <div class="donation-button">Rp. 50.000</div>
                <div class="donation-button">Rp. 100.000</div>
                <div class="donation-button">Rp. 200.000</div>
                <div class="donation-button">Rp. 500.000</div>
                <div class="donation-button">Rp. 1.000.000</div>
                <div class="donation-button">Lainnya</div>
                
            </div>
            <div class="custom-amount">
                <div class="custom-input">
                    <span class="currency">Rp.</span>
                    <input type="number" type="1000" class="amount-input"/>
                </div>
            </div>
        </div>
        
        <div class="payment-methods">
            <div class="section-title">Pilih Metode Pembayaran</div>
            <div class="payment-options">
                <div class="payment-option active">
                    <svg class="payment-icon" viewBox="0 0 50 50" xmlns="http://www.w3.org/2000/svg">
                        <rect x="5" y="10" width="40" height="30" rx="2" fill="#00a0e4" />
                        <rect x="5" y="15" width="40" height="5" fill="#0066a1" />
                        <rect x="10" y="25" width="30" height="5" rx="1" fill="white" />
                    </svg>
                    <div class="payment-label">Rekening</div>
                    
                </div>
                <div class="payment-option">
                    <svg class="payment-icon" viewBox="0 0 50 50" xmlns="http://www.w3.org/2000/svg">
                        <rect x="5" y="10" width="40" height="30" rx="5" fill="#00a0e4" />
                        <circle cx="25" cy="25" r="10" fill="white" />
                        <path d="M20,20 L30,30 M20,30 L30,20" stroke="white" stroke-width="2" />
                    </svg>
                    <div class="payment-label">E-Wallet</div>
                </div>
            </div>
            
            
        </div>
        
        <button class="submit-button">
            Donasi
            <svg class="arrow-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
            </svg>
        </button>
    </div>
    
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const donationButtons = document.querySelectorAll('.donation-button');
            const customInput = document.querySelector('.amount-input');
            const paymentOptions = document.querySelectorAll('.payment-option');
            
            // Handle donation amount selection
            donationButtons.forEach(button => {
                button.addEventListener('click', function() {
                    donationButtons.forEach(btn => btn.classList.remove('active'));
                    this.classList.add('active');
                    
                    // Update input field if a predefined amount is selected
                    const buttonText = this.textContent;
                    if (buttonText !== 'Lainnya') {
                        const amount = buttonText.replace('Rp. ', '').replace('.', '');
                        customInput.value = amount.includes('.') ? amount : amount ;
                    }
                });
            });
            
            // Handle payment method selection
            paymentOptions.forEach(option => {
                option.addEventListener('click', function() {
                    paymentOptions.forEach(opt => opt.classList.remove('active'));
                    this.classList.add('active');
                });
            });
            
            // Simulate form submission
            document.querySelector('.submit-button').addEventListener('click', function() {
                alert('Terima kasih atas donasi Anda!');
            });
        });
    </script>
</body>
</html>
