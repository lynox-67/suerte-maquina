<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Lynox Hub - Panel Admin con Key System</title>
  
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
      color: #e0e0ff;
      margin: 0;
      padding: 0;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    
    .container {
      background: rgba(30, 30, 60, 0.75);
      backdrop-filter: blur(10px);
      border: 1px solid rgba(100, 100, 255, 0.3);
      border-radius: 16px;
      padding: 2.5rem 2rem;
      width: 90%;
      max-width: 500px;
      box-shadow: 0 15px 40px rgba(0,0,0,0.6);
      text-align: center;
    }
    
    h1 {
      margin: 0 0 1.8rem;
      color: #a78bfa;
      font-size: 2.1rem;
    }
    
    .form-group {
      margin-bottom: 1.5rem;
      text-align: left;
    }
    
    label {
      display: block;
      margin-bottom: 0.5rem;
      color: #c4b5fd;
    }
    
    input[type="password"], input[type="text"] {
      width: 100%;
      padding: 0.9rem;
      font-size: 1.1rem;
      border: 1px solid #4a4a7a;
      border-radius: 8px;
      background: rgba(20,20,40,0.8);
      color: white;
      outline: none;
    }
    
    input:focus {
      border-color: #a78bfa;
      box-shadow: 0 0 0 3px rgba(167,139,250,0.25);
    }
    
    button {
      background: #7c3aed;
      color: white;
      border: none;
      padding: 0.95rem 2rem;
      font-size: 1.1rem;
      border-radius: 8px;
      cursor: pointer;
      transition: all 0.25s;
      width: 100%;
      margin: 0.5rem 0;
    }
    
    button:hover {
      background: #9f7aea;
      transform: translateY(-2px);
    }
    
    .error {
      color: #ff6b6b;
      margin: 1rem 0 0;
      font-size: 0.95rem;
      display: none;
    }
    
    #admin-content {
      display: none;
      margin-top: 2rem;
      text-align: left;
    }
    
    .status {
      font-size: 0.95rem;
      margin-top: 1.5rem;
      color: #a0a0ff;
    }
    
    .logout {
      margin-top: 2rem;
      background: #e11d48;
      color: white;
    }
    
    .logout:hover {
      background: #f43f5e;
    }
    
    .key-list {
      margin-top: 1.5rem;
      background: rgba(20,20,40,0.8);
      padding: 1rem;
      border-radius: 8px;
      max-height: 200px;
      overflow-y: auto;
    }
    
    .key-item {
      background: #2a2a5a;
      padding: 0.6rem;
      margin: 0.5rem 0;
      border-radius: 6px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    
    .delete-key {
      background: #ff6b6b;
      color: white;
      border: none;
      padding: 0.3rem 0.6rem;
      border-radius: 4px;
      cursor: pointer;
    }
    
    .delete-key:hover {
      background: #ff8787;
    }
  </style>
</head>
<body>

<div class="container" id="login-container">
  <h1>Lynox Hub Admin</h1>
  
  <div class="form-group">
    <input type="password" id="password" placeholder="Ingresa la contraseña" autocomplete="off">
  </div>
  
  <button onclick="checkPassword()">Ingresar</button>
  
  <div class="error" id="error-msg">Contraseña incorrecta</div>
  
  <div class="status" id="status"></div>
</div>

<div class="container" id="admin-container" style="display:none;">
  <h1>Panel de Administración - Key System</h1>
  <p>Bienvenido, administrador de Lynox Hub.</p>
  
  <div id="admin-content">
    <h3>Generar Nueva Key</h3>
    
    <div class="form-group">
      <label for="user-name">Nombre de Usuario (opcional):</label>
      <input type="text" id="user-name" placeholder="Ej: usuario123">
    </div>
    
    <button onclick="generateKey()">Generar Key</button>
    
    <div id="generated-key" class="status" style="margin-top:1rem;"></div>
    
    <h3>Lista de Keys Existentes</h3>
    <div class="key-list" id="key-list"></div>
  </div>
  
  <button class="logout" onclick="logout()">Cerrar sesión</button>
</div>

<script>
  // Contraseña del admin (cámbiala si quieres)
  const ADMIN_PASSWORD = "AdminLynox2026!";

  const loginContainer = document.getElementById("login-container");
  const adminContainer = document.getElementById("admin-container");
  const errorMsg = document.getElementById("error-msg");
  const status = document.getElementById("status");
  const keyList = document.getElementById("key-list");
  const generatedKeyDisplay = document.getElementById("generated-key");
  const userNameInput = document.getElementById("user-name");

  // Cargar keys de localStorage (simulando base de datos local)
  let keys = JSON.parse(localStorage.getItem("lynoxKeys")) || [];

  function checkPassword() {
    const input = document.getElementById("password").value.trim();
    
    if (input === ADMIN_PASSWORD) {
      localStorage.setItem("isAdmin", "true");
      localStorage.setItem("adminTime", Date.now());
      showAdminPanel();
    } else {
      errorMsg.style.display = "block";
      setTimeout(() => { errorMsg.style.display = "none"; }, 3000);
    }
  }

  function showAdminPanel() {
    loginContainer.style.display = "none";
    adminContainer.style.display = "block";
    status.textContent = "Sesión iniciada como administrador";
    loadKeys();
  }

  function logout() {
    localStorage.removeItem("isAdmin");
    localStorage.removeItem("adminTime");
    location.reload();
  }

  function generateKey() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let key = 'LYNOX-';
    for (let i = 0; i < 12; i++) {
      key += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    
    const userName = userNameInput.value.trim() || "Anónimo";
    
    keys.push({ key: key, user: userName, created: new Date().toLocaleString() });
    localStorage.setItem("lynoxKeys", JSON.stringify(keys));
    
    generatedKeyDisplay.textContent = `Key generada para ${userName}: ${key}`;
    userNameInput.value = "";
    loadKeys();
  }

  function loadKeys() {
    keyList.innerHTML = "";
    keys.forEach((item, index) => {
      const div = document.createElement("div");
      div.className = "key-item";
      div.innerHTML = `
        <span>${item.key} - ${item.user} (${item.created})</span>
        <button class="delete-key" onclick="deleteKey(${index})">Eliminar</button>
      `;
      keyList.appendChild(div);
    });
  }

  function deleteKey(index) {
    keys.splice(index, 1);
    localStorage.setItem("lynoxKeys", JSON.stringify(keys));
    loadKeys();
  }

  // Verificar si ya está logueado
  window.onload = function() {
    if (localStorage.getItem("isAdmin") === "true") {
      const time = localStorage.getItem("adminTime");
      if (Date.now() - time < 2 * 60 * 60 * 1000) {  // 2 horas
        showAdminPanel();
      } else {
        localStorage.clear();
      }
    }
  };

  // Enter para login
  document.getElementById("password").addEventListener("keypress", function(e) {
    if (e.key === "Enter") {
      checkPassword();
    }
  });
</script>

</body>
</html>
