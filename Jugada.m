classdef Jugada < handle
    
    properties
       tablero=zeros(3,3);
       puntaje=Inf;
    end
    
    methods
        
        function mostrar_informacion(this)
            disp('tablero');
            disp(this.tablero);
            disp('puntaje');
            disp(this.puntaje);   
        end
        
        function mostrar_tablero(this)
            for i=1:3
                fila = [];
                for j=1:3
                    if this.tablero(i,j)==1
                        fila=[fila 'o '];
                    elseif this.tablero(i,j)==-1
                        fila=[fila 'x '];
                    else
                    fila = [fila '_ '];
                    end
                end
                disp(fila);
            end
        end
    end
        
    
end

