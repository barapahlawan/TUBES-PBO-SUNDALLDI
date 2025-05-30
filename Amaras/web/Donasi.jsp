<%-- 
    Document   : Donasi
    Created on : 22 May 2025, 12.57.12
    Author     : Alexandra Naibaho
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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: white;
            color: #333;
            min-height: 100vh;
        }
        
        .header {
            background: linear-gradient(to right, #1a56a2, #4285f4);
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .logo-container {
            display: flex;
            align-items: center;
        }
        
        .logo {
            width: 40px;
            height: 40px;
            margin-right: 15px;
            background: white;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #4fc3f7;
            font-weight: bold;
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
            padding: 8px 16px;
            border-radius: 20px;
            transition: background 0.3s ease;
        }
        
        .nav-link:hover {
            background: rgba(255,255,255,0.2);
        }
        
        .container {
            max-width: 600px;
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
        
        .main-title {
            text-align: center;
            color: #1976d2;
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        
        .subtitle {
            text-align: center;
            margin-bottom: 40px;
            color: #1976d2;
            font-size: 16px;
        }
        
        .section-title {
            text-align: center;
            margin: 30px 0 20px;
            color: #1976d2;
            font-weight: bold;
            font-size: 18px;
        }
        
        .donation-options {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .donation-button {
            background: white;
            border: 2px solid #e0e0e0;
            border-radius: 25px;
            padding: 15px 10px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
            color: #1976d2;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        
        .donation-button:hover {
            border-color: #1976d2;
            box-shadow: 0 4px 15px rgba(25, 118, 210, 0.2);
            transform: translateY(-2px);
        }
        
        .donation-button.active {
            background: linear-gradient(135deg, #4fc3f7, #29b6f6);
            color: white;
            border-color: #1976d2;
        }
        
        .custom-amount {
            margin: 20px 0 40px;
            width: 100%;
        }
        
        .custom-input {
            display: flex;
            align-items: center;
            background: white;
            border: 2px solid #e0e0e0;
            border-radius: 25px;
            padding: 0 20px;
            width: 100%;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        
        .currency {
            font-weight: bold;
            color: #1976d2;
        }
        
        .amount-input {
            border: none;
            padding: 15px 10px;
            font-size: 16px;
            flex-grow: 1;
            outline: none;
            background: transparent;
        }
        
        .payment-section-title {
            text-align: center;
            margin: 30px 0 20px;
            color: #1976d2;
            font-weight: bold;
            font-size: 18px;
        }
        
        .payment-section {
            margin-bottom: 30px;
        }
        
        .section-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            padding: 10px 15px;
            background: rgba(255,255,255,0.7);
            border-radius: 12px;
            color: #1976d2;
            font-weight: 600;
        }
        
        .section-icon {
            width: 24px;
            height: 24px;
            margin-right: 10px;
            background: #1976d2;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 14px;
        }
        
        /* Transfer Bank - Horizontal */
        .bank-options-horizontal {
            display: flex;
            gap: 15px;
            overflow-x: auto;
            padding-bottom: 10px;
        }
        
        .bank-options-horizontal::-webkit-scrollbar {
            height: 6px;
        }
        
        .bank-options-horizontal::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 3px;
        }
        
        .bank-options-horizontal::-webkit-scrollbar-thumb {
            background: #c1c1c1;
            border-radius: 3px;
        }
        
        .bank-option {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 15px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: white;
            text-align: center;
            position: relative;
            min-width: 120px;
            flex-shrink: 0;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        
        .bank-option:hover {
            border-color: #1976d2;
            box-shadow: 0 4px 15px rgba(25, 118, 210, 0.2);
            transform: translateY(-2px);
        }
        
        .bank-option.selected {
            border-color: #1976d2;
            background: linear-gradient(135deg, #e3f2fd, #f3e5f5);
        }
        
        .bank-option input[type="radio"] {
            position: absolute;
            top: 8px;
            left: 8px;
            width: 16px;
            height: 16px;
            accent-color: #1976d2;
        }
        
        .bank-logo {
            width: 40px;
            height: 40px;
            margin: 0 0 8px 0;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: white;
            font-size: 12px;
        }
        
        .bank-name {
            font-weight: 600;
            color: #333;
            font-size: 12px;
            line-height: 1.3;
        }
        
        /* E-Wallet - Vertical */
        .ewallet-options {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        
        .ewallet-option {
            display: flex;
            align-items: center;
            padding: 15px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        
        .ewallet-option:hover {
            border-color: #1976d2;
            box-shadow: 0 4px 15px rgba(25, 118, 210, 0.2);
            transform: translateY(-2px);
        }
        
        .ewallet-option.selected {
            border-color: #1976d2;
            background: linear-gradient(135deg, #e3f2fd, #f3e5f5);
        }
        
        .ewallet-option input[type="radio"] {
            width: 18px;
            height: 18px;
            margin-right: 15px;
            accent-color: #1976d2;
        }
        
        .ewallet-logo {
            width: 40px;
            height: 40px;
            margin-right: 15px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: white;
            font-size: 12px;
        }
        
        .ewallet-name {
            font-weight: 600;
            color: #333;
            font-size: 16px;
        }
        
        /* Bank Colors */
        .bca { background: linear-gradient(135deg, #1e88e5, #1565c0); }
        .mandiri { background: linear-gradient(135deg, #ffa726, #ff9800); }
        .bni { background: linear-gradient(135deg, #ff7043, #ff5722); }
        .gopay { background: linear-gradient(135deg, #00c853, #4caf50); }
        .ovo { background: linear-gradient(135deg, #673ab7, #9c27b0); }
        .dana { background: linear-gradient(135deg, #2196f3, #1976d2); }
        
        .submit-button {
            width: 100%;
            background: linear-gradient(to right, #1a56a2, #4285f4);
            color: white;
            border: none;
            border-radius: 25px;
            padding: 18px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(79, 195, 247, 0.3);
        }
        
        .submit-button:hover {
            background: linear-gradient(135deg, #29b6f6, #1976d2);
            box-shadow: 0 6px 20px rgba(79, 195, 247, 0.4);
            transform: translateY(-2px);
        }
        
        .arrow-icon {
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo-container">
             <img src="logo.png" alt="Yayasan Amaras Logo" height="50">
             <div class="title"> YAYASAN AMARAS</div>
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
        <h1 class="main-title">Mari berdonasi!</h1>
        <p class="subtitle">Isi form di bawah ini untuk memberikan donasi kepada Yayasan Amaras</p>
        
        <div class="section-title">Donasi Terbaik Anda</div>
        <div class="donation-options">
            <div class="donation-button" onclick="selectDonation(this, '50000')">Rp. 50.000</div>
            <div class="donation-button" onclick="selectDonation(this, '100000')">Rp. 100.000</div>
            <div class="donation-button" onclick="selectDonation(this, '200000')">Rp. 200.000</div>
            <div class="donation-button" onclick="selectDonation(this, '500000')">Rp. 500.000</div>
            <div class="donation-button" onclick="selectDonation(this, '1000000')">Rp. 1.000.000</div>
            <div class="donation-button" onclick="selectDonation(this, 'custom')">Lainnya</div>
        </div>
        
        <div class="custom-amount">
            <div class="custom-input">
                <span class="currency">Rp.</span>
                <input type="number" placeholder="150.000" class="amount-input" id="customAmount"/>
            </div>
        </div>
        
        <div class="payment-section-title">Pilih Metode Pembayaran</div>
        
        <!-- Transfer Bank Section -->
        <div class="payment-section">
            <div class="section-header">
                <div class="section-icon">🏦</div>
                Transfer Bank
            </div>
            
            <div class="bank-options-horizontal">
                <div class="bank-option" onclick="selectPayment('bca', this)">
                    <input type="radio" id="bca" name="payment" value="bca">
                    <div class="bank-logo bca">BCA</div>
                    <div class="bank-name">Bank Central Asia</div>
                </div>
                
                <div class="bank-option" onclick="selectPayment('mandiri', this)">
                    <input type="radio" id="mandiri" name="payment" value="mandiri">
                    <div class="bank-logo mandiri">MDR</div>
                    <div class="bank-name">Bank Mandiri</div>
                </div>
                
                <div class="bank-option" onclick="selectPayment('bni', this)">
                    <input type="radio" id="bni" name="payment" value="bni">
                    <div class="bank-logo bni">BNI</div>
                    <div class="bank-name">Bank Negara Indonesia</div>
                </div>
            </div>
        </div>
        
        <!-- E-Wallet Section -->
        <div class="payment-section">
            <div class="section-header">
                <div class="section-icon">💳</div>
                E-Wallet
            </div>
            
            <div class="ewallet-options">
                <div class="ewallet-option" onclick="selectPayment('gopay', this)">
                    <input type="radio" id="gopay" name="payment" value="gopay">
                    <div class="ewallet-logo gopay">GP</div>
                    <div class="ewallet-name">GoPay</div>
                </div>
                
                <div class="ewallet-option" onclick="selectPayment('ovo', this)">
                    <input type="radio" id="ovo" name="payment" value="ovo">
                    <div class="ewallet-logo ovo">OVO</div>
                    <div class="ewallet-name">Ovo</div>
                </div>
                
                <div class="ewallet-option" onclick="selectPayment('dana', this)">
                    <input type="radio" id="dana" name="payment" value="dana">
                    <div class="ewallet-logo dana">DANA</div>
                    <div class="ewallet-name">Dana</div>
                </div>
            </div>
        </div>
        
        <button class="submit-button" onclick="processDonation()">
            <span>Donasi</span>
            <span class="arrow-icon">→</span>
        </button>
    </div>
    
    <script>
        let selectedPayment = null;
        let selectedAmount = null;
        
        function selectDonation(element, amount) {
            // Remove active class from all donation buttons
            document.querySelectorAll('.donation-button').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Add active class to selected button
            element.classList.add('active');
            selectedAmount = amount;
            
            // Update input field if not custom
            const customInput = document.getElementById('customAmount');
            if (amount !== 'custom') {
                customInput.value = amount;
            } else {
                customInput.focus();
            }
        }
        
        function selectPayment(paymentMethod, element) {
            // Remove selection from all payment options
            document.querySelectorAll('.bank-option, .ewallet-option').forEach(option => {
                option.classList.remove('selected');
            });
            
            // Add selection to clicked option
            document.getElementById(paymentMethod).checked = true;
            element.classList.add('selected');
            selectedPayment = paymentMethod;
        }
        
        function processDonation() {
            const amount = document.getElementById('customAmount').value;
            
            if (!amount || amount <= 0) {
                alert('Silakan masukkan jumlah donasi!');
                return;
            }
            
            if (!selectedPayment) {
                alert('Silakan pilih metode pembayaran!');
                return;
            }
            
            const paymentNames = {
                'bca': 'Bank Central Asia (BCA)',
                'mandiri': 'Bank Mandiri',
                'bni': 'Bank Negara Indonesia (BNI)',
                'gopay': 'GoPay',
                'ovo': 'OVO',
                'dana': 'DANA'
            };
            
            const formatter = new Intl.NumberFormat('id-ID');
            alert(`Terima kasih atas donasi Anda!\n\nJumlah: Rp. ${formatter.format(amount)}\nMetode: ${paymentNames[selectedPayment]}\n\n❤️ Semoga berkah!`);
        }
        
        // Handle custom input
        document.getElementById('customAmount').addEventListener('input', function() {
            if (this.value) {
                document.querySelectorAll('.donation-button').forEach(btn => {
                    btn.classList.remove('active');
                });
            }
        });
    </script>
</body>
</html>
