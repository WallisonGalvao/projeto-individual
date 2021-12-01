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
	idDJ						INT PRIMARY KEY AUTO_INCREMENT,
    nomeDJ						VARCHAR(30)
);

INSERT INTO DJ (nomeDJ) VALUES
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
    
    fkVertente					INT,
    FOREIGN KEY (fkVertente) REFERENCES vertente(idVertente),
    fkDJ						INT,
    FOREIGN KEY (fkDJ) REFERENCES DJ(idDJ)
) AUTO_INCREMENT = 100;
