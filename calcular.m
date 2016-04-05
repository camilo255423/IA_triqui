function [ puntaje ] = calcular( tablero)

puntaje=-4;
diagonal1= tablero(1,1)+tablero(2,2)+tablero(3,3);
diagonal2= (tablero(3,1)+tablero(2,2)+tablero(1,3));
filas = any((sum(tablero'))==3) - any((sum(tablero'))==-3);
columnas =any((sum(tablero))==3) - any((sum(tablero))==-3);

if abs(diagonal1)==3
    puntaje=diagonal1/3;
elseif abs(diagonal2)==3
    puntaje=diagonal2/3;
elseif abs(filas)
    puntaje=filas;
elseif abs(columnas)
    puntaje=columnas;
elseif ~any(any(tablero==0))
    puntaje=0;
end

end

