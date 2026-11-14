
% ARTI 303 - Task 2
% Login System

% Dataset: usernames and passwords.
user(fatimah, 1234).
user(ahmed, 5678).
user(sara, 9999).

% Start the login system.
main :-
    write('===== Login Page ====='), nl,
    login(3).

% Check username and password.
login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

login(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    check_login(Username, Password, Attempts).

% Successful login.
check_login(Username, Password, _) :-
    user(Username, Password),
    write('Login Successful'), nl.

% Unsuccessful login.
check_login(Username, Password, Attempts) :-
    \+ user(Username, Password),
    write('Login Unsuccessful'), nl,
    Remaining is Attempts - 1,
    login(Remaining).
