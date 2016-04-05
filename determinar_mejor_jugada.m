function [ mejor_jugada, mejor_puntaje ] = determinar_mejor_jugada( padre, jugador )
     %   mejor_jugada=padre;
     %   mejor_puntaje=0;
        if(es_jugada_final(padre))
            mejor_jugada=padre;
            mejor_puntaje=calcular(padre.tablero);
        else    
        hijos = generar_jugadas(padre,jugador);
        
        if jugador==1           
        mejor_puntaje=-Inf;
        mejor_jugada=0;
        for i=1:length(hijos)
            [jugada,puntaje] = determinar_mejor_jugada(hijos(i),jugador*-1);
            hijos(i).puntaje=puntaje;
                         
            if hijos(i).puntaje>mejor_puntaje
                mejor_jugada=hijos(i);
                mejor_puntaje=hijos(i).puntaje;
                
            end
                        
             
        end
        end
 
        if jugador==-1           
        mejor_puntaje=Inf;
        mejor_jugada=0;
        for i=1:length(hijos)
                [jugada,puntaje] = determinar_mejor_jugada(hijos(i),jugador*-1);
                hijos(i).puntaje=puntaje;
            
            
            if hijos(i).puntaje<mejor_puntaje
                mejor_jugada=hijos(i);
                mejor_puntaje=hijos(i).puntaje;
            end
                        
             
        end
        end
        
        end

end

