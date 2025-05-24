<%-- 
    Document   : Register
    Created on : 22 May 2025, 12.22.19
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Daftar | Yayasan Amaras</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      font-family: 'Inter', sans-serif;
      margin: 0;
      padding: 0;
    }

    body, html {
      height: 100%;
      background-color: #f4f4f4;
    }

    .container {
      display: flex;
      height: 100vh;
    }

    .left {
      flex: 2;
      background: linear-gradient(to bottom right, #2375d8, #52a0f2);
      color: white;
      padding: 80px 60px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      position: relative;
      overflow: hidden;
    }
    .left::before {
      content: "";
      background: url('logo.png') no-repeat center;
      background-size: 60%;
      opacity: 0.1;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 100%;
      height: 100%;
      z-index: 0;
    }

    .left h1 {
      font-size: 36px;
      font-weight: 700;
      margin-bottom: 16px;
      line-height: 1.3;
      z-index: 1;
    }

    .left p {
      font-size: 16px;
      max-width: 400px;
      line-height: 1.6;
      z-index: 1;
    }

    .right {
      flex: 1;
      background: white;
      padding: 60px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      position: relative;
      box-shadow: -4px 0 10px rgba(0,0,0,0.05);
    }

    .close-button {
      position: absolute;
      top: 20px;
      right: 20px;
      font-size: 28px;
      text-decoration: none;
      color: #000;
    }

    h2 {
      font-size: 24px;
      font-weight: 700;
      margin-bottom: 24px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: 600;
      margin-bottom: 6px;
    }

    .form-group input {
      width: 100%;
      padding: 12px 16px;
      border-radius: 12px;
      border: 1px solid #ccc;
      background: #eee;
    }

    .register-btn {
      width: 100%;
      padding: 14px;
      background-color: #2a6ed3;
      color: white;
      font-weight: 600;
      border: none;
      border-radius: 12px;
      cursor: pointer;
      font-size: 16px;
    }

    .login-link {
      text-align: center;
      margin-top: 16px;
      font-size: 14px;
    }

    .login-link a {
      color: #1a73e8;
      text-decoration: none;
      font-weight: 500;
    }

    .login-link a:hover {
      text-decoration: underline;
    }

    @media (max-width: 768px) {
      .container {
        flex-direction: column;
      }

      .left, .right {
        flex: 1;
        width: 100%;
        padding: 40px 30px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="left">
      <h1>Selamat Datang di Yayasan<br>Amaras Harapan Bangsa</h1>
      <p>Yayasan Amaras Harapan Bangsa hadir untuk membangun masyarakat melalui Posyandu, KBM, dan Sekolah Lansia.</p>
    </div>
    <div class="right">
      <a href="index.jsp" class="close-button">&times;</a>
      <h2>Daftar</h2>
      <form>
        <div class="form-group">
          <label for="nama">Nama Lengkap</label>
          <input type="text" id="nama" name="nama" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
          <label for="password">Kata Sandi</label>
          <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
          <label for="confirm-password">Konfirmasi Kata Sandi</label>
          <input type="password" id="confirm-password" name="confirm-password" required>
        </div>
        <button class="register-btn" type="submit">Daftar</button>
        <div class="login-link">
          Sudah punya akun? <a href="Login.jsp">Masuk</a>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
