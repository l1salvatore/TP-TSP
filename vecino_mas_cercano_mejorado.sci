function [tour, valor] = vecino_mas_cercano_mejorado(A)
// Ejecuta el algoritmo ''mejorado'' del Vecino más cercano sobre la instancia TSP dada
// Entrada:
//  A = matríz de distancias de la instancia TSP
// Salida:
//  tour = vector con los vértices a ser recoridos por el tour
//  valor = valor del tour generado

[nodos, zzz] = size(A); // en "nodos" se guarda la cantidad de vértices de la instancia

valor = %inf
tour = zeros(nodos,1)
for i=1:nodos
    [tour_i,valor_i] = vecino_mas_cercano(A,i)
    if valor_i <= valor then
        valor = valor_i
        tour = tour_i
    end
end

endfunction
