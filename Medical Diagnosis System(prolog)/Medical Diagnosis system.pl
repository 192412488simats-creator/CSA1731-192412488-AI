
% Symptoms

symptom(john, fever).
symptom(john, cough).

symptom(rita, fever).
symptom(rita, headache).

symptom(raj, sneezing).
symptom(raj, runny_nose).

symptom(anu, fever).
symptom(anu, body_pain).

% Diagnosis rules

disease(X, flu) :-
    symptom(X, fever),
    symptom(X, cough).

disease(X, common_cold) :-
    symptom(X, sneezing),
    symptom(X, runny_nose).

disease(X, possible_fever) :-
    symptom(X, fever),
    symptom(X, headache).

disease(X, viral_infection) :-
    symptom(X, fever),
    symptom(X, body_pain).
