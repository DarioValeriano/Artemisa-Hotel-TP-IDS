from flask import Flask, render_template, jsonify, request

#from flask_sqlalchemy import SQLAlchemy

#from sqlalchemy import create_engine

#from sqlalchemy import text

#from sqlalchemy.exc import SQLAlchemyError



PORT = 8080

app = Flask(__name__)


#engine = create_engine("mysql+mysqlconnector://root@localhost/proyecto_messi")


#@app.route('/users', methods = ['GET'])
#def users():
#    conn = engine.connect()
#    query = "SELECT * FROM users;"
#
#    try:
#
#        result = conn.execute(text(query))
#        conn.close() 
#    except SQLAlchemyError as err:
#        return jsonify(str(err.__cause__))
#
#   data = []
#
#   for row in result:

#       entity = {}
#       entity['id'] = row.id
#       entity['name'] = row.name
#       entity['email'] = row.email
#       entity['message'] = row.message
#       entity['contact'] = row.contact
#       entity['created_at'] = row.created_at
#       data.append(entity)
#
#
#
#   return jsonify(data), 200
#
#
#
#@app.route('/create_user', methods = ['POST'])
#def create_user():
#    conn = engine.connect()
#    new_user = request.get_json()
#    query = f"""INSERT INTO users (name, email, contact, message) VALUES ('{new_user["name"]}', '{new_user["email"]}', '{new_user["contact"]}', '{new_user["message"]}');"""
#
#   try:
#
#        result = conn.execute(text(query))
#        conn.commit()
#        conn.close()
#
#    except SQLAlchemyError as err:
#
#       return jsonify({'message': 'Se ha producido un error' + str(err.__cause__)})
#
#   
#   return jsonify({'message': 'Nos contactaremos proximamente!'}), 201


# Forma de acceder a los datos dentro de la tabla de "servicios"
#    conn = engine.connect()
#        query = "SELECT * FROM servicios;"
#        try:
#            result = conn.execute(text(query))
#            conn.close() 
#        except SQLAlchemyError as err:
#            return jsonify(str(err.__cause__))
#        
#        data = []
#        for row in result:
#            entity = {}
#            entity['nombre_servicio'] = row.nombre_servicio
#            entity['descripcion_servicio'] = row.descripcion_servicio
#            data.append(entity)




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