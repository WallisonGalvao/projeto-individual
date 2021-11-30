CREATE DATABASE WERAVE;

USE WERAVE;
CREATE TABLE vertente
(
	idVertente					INT PRIMARY KEY AUTO_INCREMENT,
    nomeVertente				VARCHAR(45)
);

INSERT INTO vertente VALUES
							(NULL, 'techno'),
							(NULL, 'minimal-techno'),
							(NULL, 'house'),
							(NULL, 'deep-house'),
							(NULL, 'tech-house'),
							(NULL, 'prog-house'),
							(NULL, 'dubstep'),
							(NULL, 'trance'),
							(NULL, 'psytrance');

CREATE TABLE DJ
(
	
   nomeDJ						VARCHAR(30) PRIMARY KEY
);

INSERT INTO DJ VALUES
					('charlotteDeWitte'),	
					('amelieLens'),	
					('taleOfUs'),	
					('artbat'),	
					('mathame'),	
					('whoMadeWho'),	
					('borisBrejcha'),	
					('hozho'),	
					('jamieJones'),	
					('michaelBibi'),	
					('fisher'),	
					('martinGarrix'),	
					('solomun'),	
					('ninaKraviz'),	
					('skrillex'),	
					('borgore'),	
					('neelix'),	
					('tiesto'),	
					('alok');

CREATE TABLE usuario
(
	idUsuario					INT PRIMARY KEY AUTO_INCREMENT,
    nome						VARCHAR(45),
    sobrenome					VARCHAR(45),
    email						VARCHAR(50) UNIQUE,
    senha						VARCHAR(45),
    telefone					VARCHAR(18),
    cidade						VARCHAR(60),
    fkDJ						VARCHAR(45),
    FOREIGN KEY (fkDJ) REFERENCES DJ(nomeDJ),
    fkVertente					INT,
    FOREIGN KEY (fkVertente) REFERENCES vertente(idVertente)
) AUTO_INCREMENT = 100;

select * from usuario;





