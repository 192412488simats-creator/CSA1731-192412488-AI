
% Graph edges

edge(a, b, 4).
edge(a, c, 2).
edge(b, d, 5).
edge(c, d, 1).
edge(c, e, 3).
edge(d, f, 2).
edge(e, f, 1).

% Heuristic values

heuristic(a, 6).
heuristic(b, 4).
heuristic(c, 3).
heuristic(d, 2).
heuristic(e, 1).
heuristic(f, 0).

% Best First Search

bestfirst(Start, Goal, Path) :-
    search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

search([[Goal|Rest]|_], Goal, [Goal|Rest]).

search([ [Node|Rest] | Others], Goal, Path) :-
    findall([Next,Node|Rest],
       (edge(Node, Next, _),
        \+ member(Next, [Node|Rest])),
       Children),
    append(Others, Children, NewPaths),
    sort_paths(NewPaths, Sorted),
    search(Sorted, Goal, Path).

sort_paths(Paths, Sorted) :-
    findall(H-P,
       (member(P, Paths),
        P = [Node|_],
        heuristic(Node, H)),
       Pairs),
    keysort(Pairs, SortedPairs),
    findall(P, member(_-P, SortedPairs), Sorted).
