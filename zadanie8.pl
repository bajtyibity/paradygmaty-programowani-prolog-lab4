ostatni(L):-
L=[],
write(koniec).

ostatni(L):-
L=[H|T],
T=[],
write(H).

ostatni(L):-
L=[H|T],
ostatni(T).

