from flask import Flask, render_template, jsonify, request, json
import requests

PORT = 8080

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/habitaciones')
def habitaciones():
    return render_template('habitaciones.html')

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
            
            return 'Reserva realizada con éxito!'

        except requests.exceptions.RequestException as e:
            print(e)
            return 'Hubo un error al procesar su solicitud. Por favor, inténtelo más tarde'

    return render_template('reservas.html')

if __name__ == '__main__':
    app.run(debug=True, port=PORT)