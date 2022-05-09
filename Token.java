
public class Token {

    
    public enum Type{
    FOR,WHILE,IF,ELSE,SWITCH,CASE,BREAK,ELSEIF,VOID,DEFAULT,CONTINUE,RETURN,LONG,
    INT,STRING,CHAR,BOOLEAN,DOUBLE,FLOAT,EQ,COMMENT,PLUS,MINUS,MULT,DIV,MOD,AND,OR,
    ASSIGN,NEQ,LESS,LESSEQ,GREATER,GRTEQ,PLUSPLUS,MINUSMINUS,TRUE,FALSE,PRIGHT,PLEFT,BRIGHT,BLEFT,SEMICOLON,COMMA,DOT,CONSTANT
}
    private String name;
    private Type type;
    private String value;
    
    public Token(String name,Type type){
        this.name=name;
        this.type = type;
        
    }
    public Token(String name,Type type,String value){
        this.name=name;
        this.type = type;
        this.value = value;
        
    }


    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the type
     */
    public Type getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(Type type) {
        this.type = type;
    }
    /**
     * @return the value
     */
    public String getValue() {
        return value;
    }

    /**
     * @param value the value to set
     */
    public void setValue(String value) {
        this.value = value;
    }
    
     public String toString()
    {
        return this.getName()+" "+this.getType()+" "+this.getValue();
    }
    
}
