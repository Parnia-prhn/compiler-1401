import java.io.*;

public class main{
	public static void main(String args[]){
		try{
		     Java j = new Java(new FileReader(argv[0]));
		     parser p =new parser(1);
		     Object result = p.parse();
		}catch(Exception e){
		     e.printStackTrace();
		}
	}
}
