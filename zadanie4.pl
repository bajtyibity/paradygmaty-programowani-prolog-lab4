dlugosc(L):- %punkt startowy
E=0,
dlugosc2(0,L).

dlugosc2(E,K):-
K=[H|T],
C is E+1,
dlugosc2(C,T).

dlugosc2(E,L):-
L=[],
write(E),nl.