ostatnipierwszy(L,L2):-
L=[H|T],
T=[],
L2=[H2|_T2],
((H2=H,write("ostatni 1 listy jest poczatkiem 2 listy"));
(((not(H2=H)),write("ostatni 1 listy nie jest poczatkiem 2 listy")))).

ostatnipierwszy(L,L2):-
L=[_H|T],
ostatnipierwszy(T,L2).

