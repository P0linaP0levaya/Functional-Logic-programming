man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

men():- man(X), print(X), nl, fail.
women():- woman(X), print(X), nl, fail.
children(X):- parent(X,Y), print(Y), nl, fail.

/*Predicate mother(?X: atom, +Y: atom)
Построить предикат mother(X, Y), который проверяет, является ли X матерью Y, если X и Y унифицированы
если X не унифицирована, выводит мать Y
если Y не унифицирована, выводит ребенка X*/
mother(X,Y):- woman(X), parent(X,Y).

/*Predicate mother(+X: atom)
Построить предикат, mother(X), который выводит маму X.*/
mother(X):- mother(Y,X), print(Y), nl.

/*Predicate brother(?X: atom, +Y: atom)
Построить предикат brother(X, Y), который проверяет, является ли X братом Y.*/
brother(X,Y):- parent(Z,X), parent(Z,Y), man(X), man(Z).

/*Predicate brothers(+X: atom)
Построить предикат brothers(X), который выводит всех братьев X.*/
brothers(X):- brother(X,Y),X\==Y, print(Y),nl,fail.

