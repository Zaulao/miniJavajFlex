package br.ufpe.cin.if688.jflex;

%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class MiniJava
%eofclose

/* Insira as regras l�xicas abaixo */

letter          = [A-Za-z]
digit           = [0-9]
integer         = {digit}+
alphanumeric    = {letter}|{digit}
identifier      = ({letter} | [_])({alphanumeric} | [_])*
whitespace      = [ \n\t\r\f]
operators		= ("&&"|"<"|"=="|"!="|"+"|"-"|"*"|"!")
delimiters 		= (";"|"."|","|"="|"("|")"|"{"|"}"|"["|"]")
comments 		= (\/\/.*)


%%

and             { System.out.println("Token AND"); }
or				{ System.out.println("Token OR"); }
"*"             { System.out.println("Token *"); }
"+"             { System.out.println("Token +"); }
"-"             { System.out.println("Token -"); }
"/"             { System.out.println("Token /"); }
"("             { System.out.println("Token ("); }
")"             { System.out.println("Token )"); }
{identifier}    { qtdeID++; System.out.println("Token ID ("+yytext()+")"); }
{integer}       { System.out.println("Token INT ("+yytext()+")"); }
{whitespace}    { /* Ignorar whitespace. */ }
    
/* Insira as regras l�xicas no espa�o acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
