% Planets Database

planet(mercury, 57900000, 88).
planet(venus, 108200000, 225).
planet(earth, 149600000, 365).
planet(mars, 227900000, 687).
planet(jupiter, 778600000, 4333).
planet(saturn, 1433500000, 10759).
planet(uranus, 2872500000, 30687).
planet(neptune, 4495100000, 60190).

% Rule to display planet details
display(Name, Distance, Days) :-
    planet(Name, Distance, Days).