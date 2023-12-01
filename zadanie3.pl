nalezy(E,L):-
L=[H|_],
H=E,
write('nalezy do listy').

nalezy(E,L):-
L=[_H|T],
nalezy(E,T).