
% Facts

bird(parrot).
bird(pigeon).
bird(crow).
bird(ostrich).
bird(penguin).
bird(sparrow).

% Rules

can_fly(X) :-
    bird(X),
    X \= ostrich,
    X \= penguin.

cannot_fly(ostrich).
cannot_fly(penguin).
