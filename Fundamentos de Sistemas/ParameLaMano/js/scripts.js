function muestra_divIf(){
    document.getElementById("menu").style.display="none";
    document.getElementById("div_if").style.display="";
    document.getElementById("div_while").style.display="none";
    document.getElementById("div_for").style.display="none";
}

function muestra_menu(){
    document.getElementById("menu").style.display="";
    document.getElementById("div_if").style.display="none";
    document.getElementById("div_while").style.display="none";
    document.getElementById("div_for").style.display="none";
}

function muestra_divwhile(){
    document.getElementById("menu").style.display="none";
    document.getElementById("div_if").style.display="none";
    document.getElementById("div_for").style.display="none";
    document.getElementById("div_while").style.display="";
    document.getElementById("numero_adivinar").innerHTML="?";
    document.getElementById("numero").value="";
    document.getElementById("texto").innerHTML="Elige tu número";
}

function muestra_divfor(){
    document.getElementById("menu").style.display="none";
    document.getElementById("div_if").style.display="none";
    document.getElementById("div_while").style.display="none";
    document.getElementById("div_for").style.display="";
}