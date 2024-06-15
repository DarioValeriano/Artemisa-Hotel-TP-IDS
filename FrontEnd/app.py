from flask import Flask, render_template, jsonify, request, json
import requests

PORT = 8080

app = Flask(__name__)


@app.route('/habitaciones')
def habitaciones():
    backend_url = 'http://127.0.0.1:5001/informacion_habitaciones'
    try:
        response = requests.get(backend_url)
        response.raise_for_status()
        habitaciones = response.json()

    except requests.exceptions.RequestException as e:
        print(e)

    return render_template('habitaciones.html', habitaciones=habitaciones)

@app.route('/servicios')
def servicios():
    return render_template('servicios.html')

@app.route('/contacto')
def contacto():
    return render_template('contacto.html')

@app.route('/preguntas_frecuentes')
def preguntas_frecuentes():
    return render_template('preguntas_frecuentes.html')

@app.route('/reservas', methods=['GET', 'POST'])
def reservas():    
    backend_url = 'http://127.0.0.1:5001/generar_reservas'  
    
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        identificacion = request.form['identificacion']
        contact = request.form['contact']
        roomtype = request.form['roomtype']
        checkin = request.form['checkin']
        checkout = request.form['checkout']
        persons = request.form['persons']
        bedtype = request.form['bedtype']

        informacion = {
            'nombre': nombre,
            'apellido': apellido,
            'identificacion': identificacion,
            'contact': contact,
            'roomtype': roomtype,
            'checkin': checkin,
            'checkout': checkout,
            'persons': persons,
            'bedtype': bedtype
        }

        headers = {'Content-Type': 'application/json', 'Accept': 'text/plain'}

        try:
            response = requests.post(backend_url, json=informacion, headers=headers)
            response.raise_for_status()
            data = response.json()

        except requests.exceptions.RequestException as e:
            print(e)

    return render_template('reservas.html')


@app.route('/', methods=['GET', 'POST'])
def home():
    backend_url = 'http://127.0.0.1:5001/generar_resenas'

    if request.method == 'POST':
        nombre = request.form['nombre']
        titulo_resena = request.form['titulo_resena']
        resena = request.form['resena']
        satisfaccion = request.form['satisfaccion']

        resena_info = {
            'nombre': nombre,
            'titulo_resena': titulo_resena,
            'resena': resena,
            'satisfaccion': satisfaccion
        }

        headers = {'Content-Type': 'application/json', 'Accept': 'text/plain'}

        try:
            response = requests.post(backend_url, json=resena_info, headers=headers)
            response.raise_for_status()
            data = response.json()

        except requests.exceptions.RequestException as e:
            print(e)

    return render_template('home.html')

@app.route('/users', methods=['GET', 'POST'])
def crear_usuario():
    backend_url = 'http://127.0.0.1:5001/contacto'
    
    if request.method == 'POST':
        nombre = request.form['nombre']
        contact = request.form['contact']
        email = request.form['email']
        message = request.form['message']

        informacion = {
            'nombre': nombre,
            'contact': contact,
            'email': email,
            'message': message,
        }

        headers = {'Content-Type': 'application/json', 'Accept': 'text/plain'}

        try:
            response = requests.post(backend_url, json=informacion, headers=headers)
            response.raise_for_status()
            data = response.json()
            return jsonify(data), 200  # Retornar datos del servidor de contacto si es necesario
        except requests.exceptions.RequestException as e:
            return jsonify({'message': f'Error en la solicitud al servidor de contacto: {str(e)}'}), 500

    return render_template('contacto.html')




if __name__ == '__main__':
    app.run(debug=True, port=PORT)