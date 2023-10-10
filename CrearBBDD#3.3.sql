mysql -u root -p

mysql

DROP DATABASE IF EXISTS juego;
CREATE DATABASE juego;

CREATE TABLE JUGADOR (
	ID INT NOT NULL,
	USERNAME VARCHAR(20),
	PASSWORD VARCHAR,
	NOMBRE VARCHAR(20),
	EDAD INT NOT NULL,
	PUNTOS INT NOT NULL,
	PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE PARTIDAS (
	ID INT NOT NULL,
	USERNAME VARCHAR,
	PUNTOS INT NOT NULL(100),
	SUPERFICIE INT NOT NULL (1000),
	DURACION (EN MINUTOS) INT NOT NULL,
	FECHA (X/X/XXXX) INT NOT NULL,
	HORA DE FINALIZACION INT NOT NULL,
	GANADOR VARCHAR(20),
	PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE CAMPEONATO (
	ID_J INT,
	ID_P INT,
	PUNTOS INT,
	FOREIGN KEY (ID_J) REFERENCES JUGADOR(ID),
	FOREIGN KEY (ID_P) REFERENCES PARTIDAS(ID)

)ENGINE=InnoDB;

INSERT INTO JUGADOR VALUES (1, 'luis44','contrasenya','Luis','48','233');
INSERT INTO JUGADOR VALUES (2, 'Roberto245','123456789','Roberto','18','187');
INSERT INTO JUGADOR VALUES (3, 'pikachu33','12345','Sofia','46','453');
INSERT INTO JUGADOR VALUES (4, 'sistemasoperativos','password','Luis','34','56');

INSERT INTO PARTIDAS VALUES ('1',('luis44','pikachu33'),'233','300','4','12/3/2023','12:54','luis44');
INSERT INTO PARTIDAS VALUES ('2',('luis44','Roberto245'),'256','200','5','12/5/2023','6:54','luis44');
INSERT INTO PARTIDAS VALUES ('3',('luis44','sistemasoperativos'),'356','500','7','7/7/2023','16:56','luis44');

INSERT INTO CAMPEONATO (1,3,233)

/*Cuantas personas menores de 18 años tienen más de 40 puntos */

SELECT JUGADOR.NOMBRE FROM (JUGADOR, PARTIDAS) WHERE JUGADOR.EDAD < '18' AND PARTIDAS.PUNTOS > '40'






	
