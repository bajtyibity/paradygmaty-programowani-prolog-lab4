dopasujt(L,[],Z,N):-
nl,write('znaleziono wzor'),nl,write(Z)).

dopasujt(L,W,Z,N):-
W=[],
nl,write('znaleziono wzor'),nl,write(Z).

dopasujt(L,W,Z,N):-
nl,write('nie znaleziono wzoru'),nl,write(Z)).

dopasujt(L,W,Z,_N):-
L=[],
W=[],
nl,write('znaleziono wzor'),nl,write(Z).

dopasuj(L,W,_Z):-
append(L,[a],L2),
append(W,['.'],W2),
dopasujt(L2,W2,[],o).

dopasujt(L,W,Z,N):-
L=[H|T],
W=[H2|T2],
(not(W=[])),
(
	((N='.'),T2=[],C=(8));
	((N='*'),(T\=[]),T2=[],(C=(7)));
	((H2=n),(number(H)),(C=1));
	((H2=a),(atom(H)),(C=2));
	((H2=l),(is_list(H)),(C=3));
	((H2='*'),(C=4));
	((H2='.'),(C=5));
	((N='*'),C=(6));
	(C=0)
)
,
(
(C=1,append(Z,[H],Test),write(n),dopasujt(T,T2,Test,n));%liczba
(C=2,append(Z,[H],Test),write(a),dopasujt(T,T2,Test,a));%atom
(C=3,append(Z,[H],Test),write(l),dopasujt(T,T2,Test,l));%lista
(C=4,append(Z,[H],Test),write('*'),dopasujt(T,T2,Test,'*'));%wszysko
(C=5,append(Z,[H],Test),write('.'),dopasujt(T,T2,Test,'.'));%dowolnyznak
(C=6,append(Z,[H],Test),write('*'),dopasujt(T,W,Test,'*'));%powtórka przy gwiazdce czyli kolejna iteracja po *
(C=7,append(Z,[H],Test),write('e'),dopasujt(T,W,Test,'*'));%debug by * gwiazka wypisala wszystko
(C=8,append(Z,[],Test),dopasujt(T,T2,Test,'.'));%debug by gwiazka wypisala wszystko czyli wstawia znak który usuwa ale tu nie wypisuje tego
(C=0,append(Z,[],Test),write(o),dopasujt(T,W,Test,o))% ogolny czyli przechodzi dalej
)
.


