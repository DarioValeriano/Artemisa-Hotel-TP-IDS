let habitaciones = document.getElementsByClassName('habitacion')
const largoMaximo = 150


function agregarClasePorElemento(lista, clase){
    for (let i = 0; i < lista.length; i++) {
        let elemento = lista[i];
        elemento.classList.add(clase) 
    }
}

function eliminarClasePorElemento(lista, clase){
    for (let i = 0; i < lista.length; i++) {
        let elemento = lista[i];
        elemento.classList.remove(clase) 
    }
}

for (let i = 0; i < habitaciones.length; i++) {
    let habitacion = habitaciones[i]
    let botonLeerMas = habitacion.querySelector('.leer-mas')
    let botonCerrarInfo = habitacion.querySelector('.cerrar-info-boton')
    let bloqueInfoH = habitacion.querySelector('.bloque-informacion-h')
    let descripciones = habitacion.getElementsByClassName('texto-descripcion')
    let resumenes = habitacion.getElementsByClassName('mini-descripcion')
    let imagenes = habitacion.querySelectorAll('#imagenes_carrusel_galeria')

    agregarClasePorElemento(imagenes, 'ajuste-height')

    for (let k = 0; k < descripciones.length; k++) {
        let descripcion = descripciones[k];
        let resumen = resumenes[k]
        if( descripcion.innerHTML.length > largoMaximo){
            resumen.innerHTML = descripcion.innerHTML.substring(0, largoMaximo) + '...'
        } else {
            resumen.innerHTML = descripcion.innerHTML
        }
        
    }

    botonLeerMas.addEventListener('click', () => {
        eliminarClasePorElemento(imagenes, 'ajuste-height')
        bloqueInfoH.style.display = 'flex'

        setTimeout(()=>{
            bloqueInfoH.classList.add('mostrar')
        }, 5)
    })
    
    botonCerrarInfo.addEventListener('click', () => {
        bloqueInfoH.style.display = 'none'
        agregarClasePorElemento(imagenes, 'ajuste-height')
    })

}

