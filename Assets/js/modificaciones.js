function isEdge() {
    return /Edg/.test(navigator.userAgent);
  }
  const base_url = "<?= base_url(); ?>";

  // Solo ejecuta el código si no es Microsoft Edge
  if (!isEdge()) {
    document.addEventListener('DOMContentLoaded', function() {
      const togglePassword = document.querySelector('#togglePassword');
      const passwordField = document.querySelector('#txtPassword');
      
      // Evento que muestra el ícono cuando se empieza a escribir en el campo de contraseña
      passwordField.addEventListener('input', function () {
        if (this.value.length > 0) {
          togglePassword.style.display = 'inline'; // Mostrar el ícono si el campo tiene texto
        } else {
          togglePassword.style.display = 'none'; // Ocultar el ícono si el campo está vacío
        }
      });
  
      // Evento para alternar entre mostrar/ocultar la contraseña
      togglePassword.addEventListener('click', function () {
        const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', type);
        
        // Cambia el ícono de ojo
        this.querySelector('i').classList.toggle('fa-eye');
        this.querySelector('i').classList.toggle('fa-eye-slash');
      });
    });
  }