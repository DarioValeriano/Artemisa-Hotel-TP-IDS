document.getElementById("formulario").addEventListener("submit", function(event) {
    event.preventDefault();

    const nameInput = document.getElementById("name").value;
    const emailInput = document.getElementById("email").value;
    const contactInput = document.getElementById("contact").value;
    const messageInput = document.getElementById("message").value;

    if (validateForm()) {
        alert("¡Nos contactaremos muy pronto!");
        createUser();
    } else {
        alert("Revise los valores ingresados en los campos.");
    }

    function validateForm() {
        const formData = {
            name: nameInput.trim(),
            email: emailInput.trim(),
            contact: contactInput.trim(),
            message: messageInput.trim()
        };
    
        return validateName(formData.name) && validateEmail(formData.email) && validateContact(formData.contact) && validateMessage(formData.message);
    }
    function validateName(name) {
        return name.length > 0;
    }
    function validateEmail(email) {
        return email.includes('@') && email.includes('.');
    }
    function validateContact(contact) {
        return contact.split('').every(char => char >= '0' && char <= '9');
    }
    function validateMessage(message) {
        return message.length > 0;
    }
});

function createUser() {
    fetch('/create_user', { //con fetch enviamos datos al server
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
        document.getElementById("formulario").reset(); //Limpiamos el form porque ya mandamos los datos
    })
    .catch(error => {
        console.error('Error:', error);
        document.getElementById("aviso").innerText = 'Hubo un error al procesar su solicitud. Por favor, inténtelo de nuevo más tarde.';
    });
}