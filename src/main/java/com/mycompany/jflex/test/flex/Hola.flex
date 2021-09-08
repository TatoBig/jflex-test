/* Seccion 1 */
package com.mycompany.jflex.test;

%%
%class Numeros
%standalone
%line
%column

NUMERO = [0-9]+
Hola = hola
Variable = ({Hola} {NUMERO} | ({Hola} | {NUMERO}))
%%

/* Seccion 3 */
{Variable} {
            System.out.println("Encontré un número:["+yytext()+"] en línea:"+yyline);
         }
.        { }