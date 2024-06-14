from flask import Flask, render_template, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from sqlalchemy import text
from sqlalchemy.exc import SQLAlchemyError
import requests
from flask_cors import CORS

PORT = 5001

app = Flask(__name__)
CORS(app)

def set_connection():
    engine = create_engine("mysql+mysqlconnector://root:@localhost/proyecto_messi")
    connection = engine.connect()
    return connection

def insertar_cliente(conn, nombre, apellido, identificacion, telefono):
    query_insertar_cliente = """INSERT INTO cliente (nombre, apellido, identificacion, telefono) 
                            VALUES (:nombre, :apellido, :identificacion, :telefono)"""
    result_insertar_cliente = conn.execute(text(query_insertar_cliente), {'nombre': nombre, 'apellido': apellido, 'identificacion': identificacion, 'telefono': telefono})
    return result_insertar_cliente.lastrowid

@app.route('/generar_reservas', methods=['GET', 'POST'])
def generar_reservas():

    conn = set_connection()
    data = request.json

    nombre = data.get('nombre')
    apellido = data.get('apellido')
    identificacion = data.get('identificacion')
    contact = data.get('contact')
    checkin = data.get('checkin')
    checkout = data.get('checkout')
    roomtype = data.get('roomtype')
    persons = data.get('persons')
    bedtype = data.get('bedtype')
    
    try:
        id_cliente = insertar_cliente(conn, nombre, apellido, identificacion, contact)

        conn.commit()
        return jsonify({'message': 'Reserva realizada con éxito!'}), 201

    except Exception as e:
        return jsonify({'message': f'Error en el servidor: {str(e)}'}), 500
    finally:
        conn.close()


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



if __name__ == "__main__":
    app.run(debug=True, port=PORT)
