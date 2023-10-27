
/*let numeroAdivinar = Math.floor(Math.random() * 10 + 1); // Número aleatorio entre 0 y 100

function jugar() {
    
    let entrada = parseInt(document.getElementById("numero").value);
    
    while (entrada != numeroAdivinar) {
        
        if (isNaN(entrada)) {
            document.getElementById("texto").innerHTML = "Por favor, ingresa un número válido.";
            document.getElementById("numero").value="";
            document.getElementById("numero").focus;                                                                                                break;   
        } else if (entrada < numeroAdivinar) {
            document.getElementById("texto").innerHTML = "El número a adivinar es mayor.";
            document.getElementById("numero").value="";
            document.getElementById("numero").focus;                                                                                                     break;     
        } else if (entrada > numeroAdivinar) {
            document.getElementById("texto").innerHTML = "El número a adivinar es menor.";
            document.getElementById("numero").value="";
            document.getElementById("numero").focus;                                                                                                break;
        } 
    }

    if(entrada === numeroAdivinar){
        document.getElementById("texto").innerHTML = "¡GANASTE! Adivinaste el número ";
        document.getElementById("numero_adivinar").innerHTML = numeroAdivinar;
        numeroAdivinar = Math.floor(Math.random() * 10 + 1);
    }

    
}*/

const numero_adivinar = Math.floor(Math.random() * 10 + 1);
let intentos =0;
function jugar() {
  const entrada = document.getElementById("numero");
  const entrada1 = parseInt(entrada.value);
  const mensaje = document.getElementById("texto");

  if (isNaN(entrada1) || entrada1 < 1 || entrada1 > 10) {
    mensaje.textContent = "Ingresa un número válido entre 1 y 10.";
  } else {
    intentos++; // Incrementar el contador de intentos
    
    if (entrada1 === numero_adivinar) {
      mensaje.textContent = `¡Felicidades! Adivinaste el número ${intentos} intentos.`;
      document.getElementById("numero_adivinar").innerHTML = numero_adivinar;
    } else if (entrada1 < numero_adivinar) {
      mensaje.textContent = "Intenta con un número más grande.";
      
    } else {
      mensaje.textContent = "Intenta con un número más pequeño.";
      
    }
  }
}

// Bucle do while para permitir que el jugador siga adivinando hasta acertar
/*do {
  jugar();
} while (numero_adivinar !== entrada1);*/

while (numero_adivinar != entrada1){
    jugar();
    
}

