function nuevo = clonar(objeto)
     nuevo = feval(class(objeto));
     propiedades = fieldnames(objeto);
     for i = 1:length(propiedades)
        nuevo.(char(propiedades(i)))=objeto.(char(propiedades(i)));
     end
end