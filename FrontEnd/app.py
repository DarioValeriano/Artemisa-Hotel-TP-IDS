from flask import Flask, render_template, jsonify, request, url_for, redirect
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

@app.route('/contacto', methods=['POST'])
def contacto():
    backend_url = 'http://127.0.0.1:5001/crear_consulta'
    
    if request.method == 'POST':
        name = request.form['name']
        contact = request.form['contact']
        email = request.form['email']
        message = request.form['message']

        informacion = {
            'name': name,
            'contact': contact,
            'email': email,
            'message': message
        }

        headers = {'Content-Type': 'application/json', 'Accept': 'text/plain'}

        try:
            response = requests.post(backend_url, json=informacion, headers=headers)
            response.raise_for_status()
            data = response.json()
        except requests.exceptions.RequestException as err:
            print (err)

    return render_template('contacto.html')

@app.route('/preguntas_frecuentes', methods=['GET'])
def preguntas_frecuentes():
    backend_url = 'http://127.0.0.1:5001/informacion_faq'
    faq=[]
    try:
        response = requests.get(backend_url)
        response.raise_for_status()
        datos_faq = response.json()
        faq = datos_faq.get('faq')

    except requests.exceptions.RequestException as e:
        print(e)


    return render_template('preguntas_frecuentes.html', faq=faq)


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
    backend_url = 'http://127.0.0.1:5001/contenido_resenas'
    resenas = []
    promedio_satisfaccion = 0
    cantidad_resenas = 0

    try:
        devolucion = requests.get(backend_url)
        devolucion.raise_for_status()
        datos_resena = devolucion.json()
        resenas = datos_resena.get('resenas', [])
        promedio_satisfaccion = datos_resena.get('promedio_satisfaccion', 0)
        cantidad_resenas = datos_resena.get('cantidad_resenas', 0)
    except requests.exceptions.RequestException as e:
        print(e)


    if request.method == 'POST':
        backend_url = 'http://127.0.0.1:5001/generar_resenas'
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
        except requests.exceptions.RequestException as e:
            print(e)
        return redirect(url_for('home'))
    
    if promedio_satisfaccion is not None:
        promedio_redondeado = round(float(promedio_satisfaccion))
    else:
        promedio_redondeado = 0


    return render_template('home.html', resenas=resenas, promedio_satisfaccion= promedio_redondeado, cantidad_resenas=cantidad_resenas)


if __name__ == '__main__':
    app.run(debug=True, port=PORT)