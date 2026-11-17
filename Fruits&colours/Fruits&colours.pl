
% Fruit and color facts

fruit(apple, red).
fruit(banana, yellow).
fruit(orange, orange).
fruit(grapes, green).
fruit(mango, yellow).
fruit(strawberry, red).

% Rule

color(Fruit, Color) :-
    fruit(Fruit, Color).
