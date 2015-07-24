% Conversion de numeros decimales a Romanos Juan Sebastian Roncancio
d=1; % controla el ciclo de la evaluacion si es numero es valido en el while d
decimal=[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]; % numeros decimales relacionados con romanos definidos
romano={'M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I'}; % numeros romanos definidos
solucion=[];

while d % ciclo que evalua si el numero ingresado es valido
    n1=inputdlg('ingrese un número'); % n1 es la variable en donde se lee el dato igresado por el usuario
    n=str2double(n1{1}); % convertimos en dato ingresado por el ususario en un dato que podamos manejar y operar en matlab
    if n<0 || isnan(n) || fix(n) ~= n % restricciones de valores que no pueden ser usados en el programa 
       E=errordlg(' EL DATO INGRESADO NO ES VALIDO '); % advertencia que esta ingresando un dato no valido
       waitfor(E); % confirmar que el usuario leyo la advertencia
    else
        d=0;
    end
end

for i=1: numel(decimal)
    if n>=decimal(i)
        solucion=[solucion,repmat(romano{i},1,fix(n/decimal(i)))];   
        % fix es una funcion que me permite ir contando cuantos miles, centenas, decenas, unidades hay en el numero ingresado,
        %y los va acomodando  a medida que se va realizando la division e identificando la cantidad de letras
        n=rem(n,decimal(i)); % rem va tomando el residuo de la division
    end
end

msgbox({'El número es:',solucion}) % mesaje de salida al usuario



