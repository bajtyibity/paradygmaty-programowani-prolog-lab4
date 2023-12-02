dodajliste(L,E):-
E=[],
write(L).

dodajliste(L,E):-
E=[H|T],
F=[H],
append(L,F,X),
dodajliste(X,T).