let habitaciones = document.getElementsByClassName('habitacion')
const largoMaximo = 130

for (let i = 0; i < habitaciones.length; i++) {
    let habitacion = habitaciones[i]
    let cantImagenes = habitacion.getElementsByClassName('imagen').length
    let botonesIzq = habitacion.getElementsByClassName('b-izq')
    let botonesDer = habitacion.getElementsByClassName('b-der')
    let carruseles = habitacion.getElementsByClassName('imagenes-carrusel')
    let botonLeerMas = habitacion.querySelector('.leer-mas')
    let botonCerrarInfo = habitacion.querySelector('.cerrar-info-boton')
    let bloqueInfoH = habitacion.querySelector('.bloque-informacion-h')
    let descripciones = habitacion.getElementsByClassName('texto-descripcion')
    let resumenes = habitacion.getElementsByClassName('mini-descripcion')
    
    for (let j = 0; j < carruseles.length; j++) {
        let botonIzq = botonesIzq[j]
        let botonDer = botonesDer[j]
        let carrusel = carruseles[j]
        let posicion = 0;

        botonIzq.addEventListener('click', function(){
            if(posicion > 0){
                posicion -= 1;
                carrusel.style.transform = 'translateX('+ posicion * (-100)  +'%)';
            }
        })

        botonDer.addEventListener('click', () => {
            if(posicion != (cantImagenes - 1)){
                posicion += 1;
                carrusel.style.transform = 'translateX('+ posicion * (-100) +'%)';        
            }
        })
        
    }

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
        bloqueInfoH.style.display = 'flex'

        setTimeout(()=>{
            bloqueInfoH.classList.add('mostrar')
        }, 5)
    })
    
    botonCerrarInfo.addEventListener('click', () => {
        bloqueInfoH.style.display = 'none'

        setTimeout(()=>{
            bloqueInfoH.classList.remove('mostrar')
        }, 5)
        
    })

}







