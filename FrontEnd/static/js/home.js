document.addEventListener('DOMContentLoaded', function() {
    var modal = document.getElementById('modal');
    var disparador_modal = document.getElementById('disparador_modal');
    var cerrar_modal = document.getElementById('cerrar_modal');

    disparador_modal.addEventListener('click', function() {
        modal.style.display = 'block';
    });

    cerrar_modal.addEventListener('click', function() {
        modal.style.display = 'none';
    });

    window.addEventListener('click', function(event) {
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    });
});


function mostrarEstrellas(container, calificacion) {

    const template = document.getElementById('star-rating-template');
    const clone = document.importNode(template.content, true);

    
    let radios = clone.querySelectorAll('.star-rating-template input[type="radio"]');
    radios.forEach((radio, index) => {
        if (index < calificacion) {
            radio.checked = true; 
            radio.nextElementSibling.style.color = 'gold'; 
        
        }
    });

   
    container.appendChild(clone);
}

document.addEventListener('DOMContentLoaded', function() {

    let container1 = document.getElementById('valoracion_promedio');
    let valoracion_total = document.getElementById('valoracion_total').innerText;
    mostrarEstrellas(container1,parseInt(valoracion_total)); 

});

