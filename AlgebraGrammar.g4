grammar AlgebraGrammar;

expression
    : term
    | expression PLUS term
    | expression MINUS term
    ;

term
    : factor
    | term MUL factor
    | term DIV factor
    | term MOD factor
    ;

factor
    : primary
    | MINUS factor
    | PLUS factor
    ;

primary
    : integer
    | floating_point_literal
    | OPEN_PARAN expression CLOSE_PARAN
    ;

integer : MINUS* DIGIT+;

floating_point_literal : MINUS* DIGIT* POINT DIGIT+;

// Primitives

OPEN_PARAN : '(';
POINT : '.';
CLOSE_PARAN : ')';
DIGIT : [0-9];
MINUS : '-';
PLUS : '+';
DIV : '/';
MUL : '*';
MOD : '%';

WS : [ \t\n\r]+ -> skip;