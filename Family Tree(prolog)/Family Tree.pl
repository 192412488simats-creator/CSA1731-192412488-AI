
% Family facts

male(john).
male(paul).
male(george).
male(tom).

female(mary).
female(lisa).
female(anna).
female(jane).

parent(john, paul).
parent(mary, paul).

parent(john, lisa).
parent(mary, lisa).

parent(paul, george).
parent(anna, george).

parent(paul, tom).
parent(anna, tom).

% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

child(X, Y) :-
    parent(Y, X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    sibling(X, Y).

sister(X, Y) :-
    female(X),
    sibling(X, Y).
