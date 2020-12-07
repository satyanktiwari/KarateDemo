package karateJava;

public class Functions {
    public void nonStaticPrint(){
        System.out.println("\n--------test print\n");
    }
    public String nonStaticString(String arg){
        return "Hello "+ arg;
    }

    public int nonStaticAddInt(int a, int b){
        return a+b;
    }

    public static void staticFunction(){
        System.out.println("\n--------staticFunction \n");
    }
}
