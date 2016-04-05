function [ jugadas ] = generar_jugadas( jugada_actual, jugador )
jugadas=[];
            for i=1:3
                for j=1:3
                    if jugada_actual.tablero(i,j)==0
                       nueva_jugada=clonar(jugada_actual);
                       nueva_jugada.tablero(i,j)=jugador;
                       jugadas=[jugadas nueva_jugada];
                    end
                end
            end

end

