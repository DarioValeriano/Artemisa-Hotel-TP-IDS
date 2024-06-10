document.getElementById("formulario").addEventListener("submit", function(event) {
    event.preventDefault();
    createUser();
});

function createUser() {
    let formData = {
        name: document.getElementById("name").value,
        email: document.getElementById("email").value,
        contact: document.getElementById("contact").value,
        message: document.getElementById("message").value
    };

    fetch('/create_user', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(formData)
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Hubo un problema al enviar los datos al servidor.');
        }
        return response.json();
    })
    .then(data => {
        document.getElementById("aviso").innerText = data.message;
    })
    .catch(error => {
        console.error('Error:', error);
        document.getElementById("aviso").innerText = 'Hubo un error al procesar su solicitud. Por favor, inténtelo de nuevo más tarde.';
    });
}