clc
clear
jugada = Jugada();
jugada.mostrar_informacion();
jugada.mostrar_tablero();
mostrar_informacion_estados(generar_jugadas(jugada,-1));

