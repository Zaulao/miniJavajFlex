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
integer         = [1-9]*{digit}*
alphanumeric    = {letter}|{digit}
identifier      = ({letter} | [_])({alphanumeric} | [_])*
whitespace      = [ \n\t\r\f]
operators		= ("&&"|"<"|"=="|"!="|"+"|"-"|"*"|"!")
delimiters 		= (";"|"."|","|"="|"("|")"|"{"|"}"|"["|"]")
comments 		= (\/\/.*)|(\/\*(.*\n*\t*\r*\f*.*)*\*\/)


%%

boolean            { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
class              { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
public             { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
extends            { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
static             { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
void               { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
main               { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
String             { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
int                { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
while              { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
if                 { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
else               { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
return             { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
length             { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
true               { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
false              { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
this               { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
new                { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
System.out.println { System.out.println("token gerado foi um reservado: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
{integer}          { System.out.println("token gerado foi um integer: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
{operators}        { System.out.println("token gerado foi um operador: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
{delimiters}       { System.out.println("token gerado foi um delimitador: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
{identifier}       { System.out.println("token gerado foi um id: '" + yytext() +"' na linha: "+ yyline + ", coluna: " + yycolumn ); }
{whitespace}       { }
{comments}         { }
    
/* Insira as regras l�xicas no espa�o acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
