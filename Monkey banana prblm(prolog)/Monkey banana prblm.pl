
% Initial state:
% Monkey at door, box at window, banana at middle.

% Monkey moves to box
move(state(at(door), onfloor, at(window), hasnot),
     state(at(window), onfloor, at(window), hasnot),
     walk).

% Monkey pushes box to middle
move(state(at(window), onfloor, at(window), hasnot),
     state(at(middle), onfloor, at(middle), hasnot),
     push_box).

% Monkey climbs box
move(state(at(middle), onfloor, at(middle), hasnot),
     state(at(middle), onbox, at(middle), hasnot),
     climb).

% Monkey gets banana
move(state(at(middle), onbox, at(middle), hasnot),
     state(at(middle), onbox, at(middle), has),
     grasp).

% Goal state
goal(state(_, _, _, has)).

% Solve the problem
solve(State, []) :-
    goal(State).

solve(State, [Action|Rest]) :-
    move(State, NextState, Action),
    solve(NextState, Rest).
