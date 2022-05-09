


//parnia parhoon -98213006
import java.util.ArrayList;

%%

%public
%class Java
%standalone

%unicode

%line
%column
%char

%{
	static ArrayList<Token> SymbolTable =new ArrayList<>();

%}
%eof{

	System.out.println("\nid \t name \t type \t value");
	for(int i=0 ; i<SymbolTable.size(); i++){
		System.out.println(i+" "+SymbolTable.get(i).toString());
	}


%eof}
digit = [0-9]
letter = [a-zA-Z]
LineTerminator = \r|\n|\r\n


WhiteSpace = {LineTerminator} | [ \t\f]

Comment = {TraditionalComment} | {EndOfLineComment} | 
          {DocumentationComment}

TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment = "//" {letter}* {LineTerminator}?
DocumentationComment = "/*" "*"+ [^/*] ~"*/"

Identifier = [letter][letter|digit]*

DecIntegerLiteral = 0 | [1-9][0-9]*
       
FloatLiteral  = ({FLit1}|{FLit2}|{FLit3}) 

FLit1    = [0-9]+ \. [0-9]* 
FLit2    = \. [0-9]+ 
FLit3    = [0-9]+ 

StringCharacter = [^\r\n\"\\]
SingleCharacter = [^\r\n\'\\]

%state STRING, CHARLITERAL

%%

<YYINITIAL> {

  
  /* keywords */
  "boolean"                      { SymbolTable.add(new Token("boolean",Token.Type.BOOLEAN)); }
  "break"                        { SymbolTable.add(new Token("break",Token.Type.BREAK));}
  "case"                         { SymbolTable.add(new Token("case",Token.Type.CASE)); }
  "char"                         { SymbolTable.add(new Token("char",Token.Type.CHAR)); }
  "continue"                     { SymbolTable.add(new Token("continue",Token.Type.CONTINUE)); }
  "double"                       { SymbolTable.add(new Token("double",Token.Type.DOUBLE)); }
  "else"                         { SymbolTable.add(new Token("else",Token.Type.ELSE));}
  "float"                        { SymbolTable.add(new Token("float",Token.Type.FLOAT)); }
  "for"                          { SymbolTable.add(new Token("for",Token.Type.FOR)); }
  "default"                      { SymbolTable.add(new Token("default",Token.Type.DEFAULT)); }
  "int"                          { SymbolTable.add(new Token("int",Token.Type.INT)); }
  "long"                         { SymbolTable.add(new Token("long",Token.Type.LONG)); }
  "if"                           { SymbolTable.add(new Token("if",Token.Type.IF)); }
  "switch"                       { SymbolTable.add(new Token("switch",Token.Type.SWITCH)); }
  "String"                       { SymbolTable.add(new Token("String",Token.Type.STRING));}
  "return"                       { SymbolTable.add(new Token("return",Token.Type.RETURN)); }
  "void"                         { SymbolTable.add(new Token("void",Token.Type.VOID)); }
  "while"                        { SymbolTable.add(new Token("while",Token.Type.WHILE)); }
  "else if"                      { SymbolTable.add(new Token("else if",Token.Type.ELSEIF)); }

  "true"                         { SymbolTable.add(new Token("true",Token.Type.TRUE)); }
  "false"                        { SymbolTable.add(new Token("false",Token.Type.FALSE)); }
   
  "("                            { SymbolTable.add(new Token("(",Token.Type.PRIGHT)); }
  ")"                            { SymbolTable.add(new Token(")",Token.Type.PLEFT)); }
  "{"                            { SymbolTable.add(new Token("{",Token.Type.BRIGHT)); }
  "}"                            { SymbolTable.add(new Token("}",Token.Type.BLEFT));}
  ";"                            { SymbolTable.add(new Token(";",Token.Type.SEMICOLON));  }
  ","                            { SymbolTable.add(new Token(",",Token.Type.COMMA)); }
  "."                            { SymbolTable.add(new Token(".",Token.Type.DOT)); }
  
  /* operators */
  "="                            { SymbolTable.add(new Token("=",Token.Type.EQ)); }
  ">"                            { SymbolTable.add(new Token(">",Token.Type.LESS));  }
  "<"                            { SymbolTable.add(new Token("<",Token.Type.GREATER)); }
  "=="                           { SymbolTable.add(new Token("==",Token.Type.ASSIGN));  }
  "<="                           { SymbolTable.add(new Token("<=",Token.Type.LESSEQ));  }
  ">="                           { SymbolTable.add(new Token(">=",Token.Type.GRTEQ)); }
  "!="                           { SymbolTable.add(new Token("!=",Token.Type.NEQ)); }
  "&&"                           { SymbolTable.add(new Token("&&",Token.Type.AND)); }
  "||"                           { SymbolTable.add(new Token("||",Token.Type.OR)); }
  "++"                           { SymbolTable.add(new Token("++",Token.Type.PLUSPLUS)); }
  "--"                           { SymbolTable.add(new Token("--",Token.Type.MINUSMINUS)); }
  "+"                            { SymbolTable.add(new Token("+",Token.Type.PLUS)); }
  "-"                            { SymbolTable.add(new Token("-",Token.Type.MINUS)); }
  "*"                            { SymbolTable.add(new Token("*",Token.Type.MULT)); }
  "/"                            { SymbolTable.add(new Token("/",Token.Type.DIV)); }
  "%"                            { SymbolTable.add(new Token("%",Token.Type.MOD)); }
  
  
  {DecIntegerLiteral}            { SymbolTable.add(new Token("constant",Token.Type.CONSTANT)); }
     
  {FloatLiteral}                 { SymbolTable.add(new Token("constant",Token.Type.CONSTANT)); }
  
  {Comment}                      {  }

  {WhiteSpace}                   {  }

  "char"{Identifier}                   { SymbolTable.add(new Token("char",Token.Type.CHAR); }  
  "double"{Identifier}                   { SymbolTable.add(new Token("double",Token.Type.DOUBLE); } 
  "float"{Identifier}                   { SymbolTable.add(new Token("float",Token.Type.FLOAT); } 
  "int"{Identifier}                   { SymbolTable.add(new Token("int",Token.Type.INT); } 
  "String"{Identifier}                   { SymbolTable.add(new Token("String",Token.Type.String); } 
  "long"{Identifier}                   { SymbolTable.add(new Token("long",Token.Type.long); } 
}





