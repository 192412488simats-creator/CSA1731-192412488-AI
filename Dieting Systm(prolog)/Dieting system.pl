
% Diet recommendations

diet(diabetes, 'Low sugar and high fiber foods').
diet(hypertension, 'Low salt and low fat foods').
diet(obesity, 'Low calorie foods and vegetables').
diet(anemia, 'Iron rich foods like spinach and dates').
diet(heart_disease, 'Low fat foods, fruits and vegetables').

% Rule

suggest_diet(Disease, Diet) :-
    diet(Disease, Diet).
