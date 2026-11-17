% Database containing Name and Date of Birth

person('Arun', '12-05-2002').
person('Priya', '25-08-2003').
person('Kumar', '10-01-2001').
person('Divya', '18-11-2002').

% Rule to display person details
display(Name, DOB) :-
    person(Name, DOB).