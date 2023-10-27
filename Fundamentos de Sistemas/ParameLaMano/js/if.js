/*Variables para comprobar posteriormente*/
const piedra = "piedra";
const papel = "papel";
const tijera = "tijera";

/*Valor de cada operacion*/
const empate = 0;
const victoria = 1;
const perdida = 2;



/*Tomamos los elementos necesarios del html*/ 
const piedraBtn = document.getElementById("piedra");
const papelBtn = document.getElementById("papel");
const tijeraBtn = document.getElementById("tijera");
const resultado = document.getElementById("start-text");
const usuarioImg = document.getElementById("img_usuario");
const maquinaImg = document.getElementById("img_maquina");

piedraBtn.addEventListener("click", () => {
    juego(piedra);
});
papelBtn.addEventListener("click", () => {
    juego(papel);
});
tijeraBtn.addEventListener("click", () => {
    juego(tijera);
});

function juego(opcionUsuario) {

    usuarioImg.src = "../img/if/" + opcionUsuario + ".png";

    resultado.innerHTML = "JUGANDO";

    const intervalo = setInterval(function(){
        const opcionMaquina = calcOpcionMaquina();
        maquinaImg.src = "../img/if/" + opcionMaquina + ".png";
    }, 100);

    setTimeout(function () {

        clearInterval(intervalo);

        const opcionMaquina = calcOpcionMaquina();
        const result = calcResult(opcionUsuario, opcionMaquina);

        maquinaImg.src = "../img/if/" + opcionMaquina + ".png";

        switch (result) {
            case empate:
                resultado.innerHTML = "EMPATE";
                break;
            case victoria:
                resultado.innerHTML = "GANASTE";
                break;
            case perdida:
                resultado.innerHTML = "PERDISTE";
                break;
        }
        
    },3000);
}

function calcOpcionMaquina() {
    const numero = Math.floor(Math.random() * 3);
    switch (numero) {
        case 0:
            return piedra;
        case 1:
            return papel;
        case 2:
            return tijera;
    }
}

function calcResult(opcionUsuario, opcionMaquina) {
    if (opcionUsuario === opcionMaquina) {
        return empate;

    } else if (opcionUsuario === piedra) {

        if (opcionMaquina === papel) return perdida;
        if (opcionMaquina === tijera) return victoria;

    } else if (opcionUsuario === papel) {

        if (opcionMaquina === tijera) return perdida;
        if (opcionMaquina === piedra) return victoria;

    } else if (opcionUsuario === tijera) {

        if (opcionMaquina === piedra) return perdida;
        if (opcionMaquina === papel) return victoria;

    }
}