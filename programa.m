clear
clc
jugada=Jugada();

while ~es_jugada_final(jugada)
    disp('Juega Usted...')
    fila=input('fila: ');
    columna=input('columna: ');
    jugada.tablero(fila,columna)=-1;
    jugada.mostrar_tablero();
    
    disp('Juega el computador, calculando...')
    [jugada, puntaje]=determinar_mejor_jugada(jugada,1);
    jugada.mostrar_tablero();
    
    
end
