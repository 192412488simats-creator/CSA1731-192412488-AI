
% Initial facts

fact(human).
fact(has_life).

% Rules

rule(mortal, [human]).
rule(needs_food, [has_life]).
rule(needs_water, [has_life]).

% Check whether all conditions are satisfied

all_true([]).

all_true([X|Rest]) :-
    fact(X),
    all_true(Rest).

% Forward chaining

forward :-
    rule(Conclusion, Conditions),
    all_true(Conditions),
    \+ fact(Conclusion),
    assertz(fact(Conclusion)),
    fail.

forward.
