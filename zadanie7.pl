przyjmuje ze to usun element z listy 
%jesli chodzi o usuwanie wsystkich wystąpien z listy 1 na 0 w 11 linijce w usun z listy....
usunzlisty(L,E):-
A=[],
B=0,
usunzlistyt(L,E,A,B).

usunzlistyt(L,E,Temp,C):-
L=[H|T],
B=[H],
(((append(Temp,[],X)),(E=B),C=0,usunzlistyt(T,E,Temp,1));
(append(Temp,B,X),usunzlistyt(T,E,X,C))).

usunzlistyt(L,_,Temp,_):-
L=[],
write(Temp).