piszliste(L):-
L=[],
write('koniec'),nl.

piszliste(L):-
L=[H|T],
write(H),nl,
piszliste(T).