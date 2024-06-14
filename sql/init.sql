CREATE DATABASE IF NOT EXISTS hotelArtemisa;

USE hotelArtemisa;

CREATE TABLE IF NOT EXISTS resenas (

    id INT AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    titulo_resena VARCHAR(100) NOT NULL,
    resena longtext NOT NULL,
    valoracion INT NOT NULL,
    fecha timestamp DEFAULT current_timestamp,
    PRIMARY KEY (id)
);


INSERT INTO resenas (usuario, titulo_resena, resena, valoracion) VALUES ('Maria Perez', 'resena de maria', 'el hotel es muy lindo y comodo', 5);
INSERT INTO resenas (usuario, titulo_resena, resena, valoracion) VALUES (' Perez', 'DF,ER de maria', 'el hotel es ROFKRE lindo y comodo', 8);
