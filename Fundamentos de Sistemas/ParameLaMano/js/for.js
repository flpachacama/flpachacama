    
 intentos = 0;

function verificarTesoro(numeroCasilla) {
    const casillaTesoro = Math.floor(Math.random() * 12 ) ;
    intentos++;

    for (let i = 0; i <12; i++) {
        if (i === casillaTesoro) {
            if (i === numeroCasilla) {
                document.getElementById("resultado1").textContent = `¡GANASTE! Encontraste el tesoro en ${intentos} intentos.`;
                
            } else {
                document.getElementById("resultado1").textContent =  "Sigue intentando.";
            }
            return; 
        }
    }
    
}