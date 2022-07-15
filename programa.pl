% Acertijo 24

vocal(a).
vocal(e).
vocal(i).
vocal(o).
vocal(u).
digitos([1,2,3,4,5,6,8,9]).
digitoValido(X) :- digitos(DS), member(X,DS).
duracionCapitulo(3600). % medida en segundos

clavePosible(L,D1,D2,D3) :-
    vocal(L),
    digitoValido(D1), digitoValido(D2), digitoValido(D3),
    diferentes(D1,D2,D3).

diferentes(D1,D2,D3):-D1 \= D2, D1 \= D3, D2 \= D3.

capitulosParaClave(Capitulos) :-
    findall(_,clavePosible(_,_,_,_),Alternativas),
    length(Alternativas,Cantidad),
    duracionCapitulo(Duracion),
    Capitulos is Cantidad / Duracion.
