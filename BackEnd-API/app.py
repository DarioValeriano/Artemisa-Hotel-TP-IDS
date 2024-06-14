from flask import Flask, render_template, request

app = Flask(__name__)

PORT = 8080

@app.route('/', methods=["GET"])
def Home():
    nombre_apellido = "Rocio Camila Bustamante"
    return render_template('home.html', nombre_apellido=nombre_apellido)

@app.route('/datos_personales', methods=["GET", "POST"])
def Formulario():
    if request.method == "POST":
        nombre = request.form.get("fnombre")
        apellido = request.form.get("fapellido")
        celular = request.form.get("fcelular")
        direccion = request.form.get("fdirec")
        dni = request.form.get("fdni")

        if not nombre or not apellido or not celular or not direccion or not dni:
            return render_template('formulario.html')

        datos = {
            "Nombre": nombre,
            "Apellido": apellido,
            "Celular": celular,
            "Dirección": direccion,
            "DNI": dni
        }

        return render_template('aceptado.html', datos=datos)
    else:
        return render_template('formulario.html')

if __name__ == "__main__":
    app.run(debug=True, port=PORT)
