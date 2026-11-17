% Student, Teacher and Subject Code Database

student_teacher('Arun', 'Ravi', 'CS101').
student_teacher('Priya', 'Kumar', 'CS102').
student_teacher('Divya', 'Meena', 'CS103').
student_teacher('Karthik', 'Ravi', 'CS104').

% Rule to display details
display(Student, Teacher, SubCode) :-
    student_teacher(Student, Teacher, SubCode).