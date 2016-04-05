function [ resultado ] = es_jugada_final( jugada )

    puntaje=calcular(jugada.tablero);
    resultado = puntaje==1 || puntaje==-1 || puntaje==0; 
        

end

