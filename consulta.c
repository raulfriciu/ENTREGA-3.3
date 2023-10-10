/* Cuantos personas llamadas Nil han ganado la partida en menos de 5 minutos */

SELECT JUGADOR.USERNAME FROM (JUGADOR,PARTIDAS) 
WHERE JUGADOR.NOMBRE = 'NIL' AND PARTIDAS.GANADOR = 'NIL' AND PARTIDAS.DURACION < 5

