from flask import Flask, render_template

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

if __name__ == '__main__':
    app.run(debug=True, port=PORT)