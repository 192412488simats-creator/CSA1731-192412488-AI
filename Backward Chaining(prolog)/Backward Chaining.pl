
% Facts

human(ram).
human(raj).
human(rita).

% Rules

mortal(X) :-
    human(X).

% Additional rules

can_die(X) :-
    mortal(X).
