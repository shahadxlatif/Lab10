user(shahad, 1234).
user(amjad, 5678).

login :- check_login(3).

check_login(Attempts) :-
    write('Enter username: '), read(Username),
    write('Enter password: '), read(Password),
    ( user(Username, Password) ->
        write('Login Successful'), nl
    ;
        write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        ( Remaining > 0 ->
            check_login(Remaining)
        ;
            write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).
