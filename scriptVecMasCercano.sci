function [tour,valor] = ejecutar(fil)
    [A,coordenadas] = lee_TSP(fil)
    [tour,valor] = vecino_mas_cercano(A,1)
endfunction