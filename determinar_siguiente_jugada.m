function [ mejor_jugada, mejor_puntaje ] = determinar_mejor_jugada( padre, jugador )

        hijos = generar_siguiente_jugadas(padre);
        
        
        mejor_puntaje=-Inf;
        mejor_jugada=0;
        
        for i=1:length(hijos)
            if ~es_jugada_final(hijos(i))
                [jugada,puntaje] = determinar_mejor_jugada(hijos(i),jugador*-1);
                hijos(i).puntaje=puntaje;
            end
            
            if jugador==1
                if hijos(i).puntaje>mejor_puntaje
                    mejor_jugada=hijos(i);
                    mejor_puntaje=puntaje;
                end
            end
            if jugador==-1
                 if hijos(i).puntaje>mejor_puntaje
                    mejor_jugada=hijos(i);
                    mejor_puntaje=puntaje;
                 end
            end 
        end
 
     


end

