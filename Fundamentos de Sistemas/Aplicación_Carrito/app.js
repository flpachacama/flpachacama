var carrito = [];

function agregarAlCarrito(nombre, precio) {
    var productoExistente = carrito.find(function(item) {
        return item.nombre === nombre;
    });

    if (productoExistente) {
        productoExistente.cantidad++;
    } else {
        carrito.push({ nombre: nombre, precio: precio, cantidad: 1 });
    }
    actualizarCarrito();
}

function actualizarCarrito() {
    var carritoContenido = document.getElementById('carritoContenido');
    var totalPagar = document.getElementById('totalPagar');
    var total = 0;

    carritoContenido.innerHTML = '';

    carrito.forEach(function(producto) {
        var tr = document.createElement('tr');
        var tdNombre = document.createElement('td');
        var tdPrecio = document.createElement('td');
        var tdCantidad = document.createElement('td');
        var tdTotal = document.createElement('td');

        tdNombre.textContent = producto.nombre;
        tdPrecio.textContent = '$' + producto.precio.toFixed(2);
        tdCantidad.textContent = producto.cantidad;
        tdTotal.textContent = '$' + (producto.precio * producto.cantidad).toFixed(2);

        tr.appendChild(tdNombre);
        tr.appendChild(tdPrecio);
        tr.appendChild(tdCantidad);
        tr.appendChild(tdTotal);

        carritoContenido.appendChild(tr);

        total += producto.precio * producto.cantidad;
    });

    totalPagar.textContent = '$' + total.toFixed(2);
}

function mostrarCarrito() {
    document.getElementById('carritoModal').style.display = 'block';
}

function cerrarCarrito() {
    document.getElementById('carritoModal').style.display = 'none';
}