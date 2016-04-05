clc
clear
jugada = Jugada();
jugada.mostrar_informacion();
jugada.mostrar_tablero();
mostrar_informacion_estados(generar_jugadas(jugada,-1));

es_jugada_final(jugada)
clc
jugada.tablero=zeros(3,3);
jugada.tablero(1,1)=1;
jugada.tablero(2,2)=1;
jugada.tablero(3,3)=1;
calcular(jugada.tablero)

jugada.tablero=zeros(3,3);
jugada.tablero(1,:)=[-1 -1 0];
jugada.mostrar_informacion();
calcular(jugada.tablero)
clc
jugada.tablero=zeros(3,3);
jugada.tablero=[-1 0 0;0 0 0;0 0 0];
jugada.mostrar_informacion();

[mejor_jugada,puntaje]=determinar_mejor_jugada(jugada,1);
mejor_jugada.mostrar_informacion();
puntaje

