
% ARTI 303 - Task 1
% Calculate area and perimeter of shapes.

% Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

% Triangle
triangle(A, B, C, Area, Perimeter) :-
    Perimeter is A + B + C,
    S is Perimeter / 2,
    Area is sqrt(S * (S-A) * (S-B) * (S-C)).

% Test queries:
% ?- square(5, A, P).
% A = 25, P = 20.

% ?- rectangle(6, 4, A, P).
% A = 24, P = 20.

% ?- triangle(3, 4, 5, A, P).
% A = 6.0, P = 12.
