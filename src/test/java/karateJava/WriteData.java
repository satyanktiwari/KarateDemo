package karateJava;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData {
    public static void writeData(String arg) throws FileNotFoundException, UnsupportedEncodingException{
        PrintWriter writer = new PrintWriter("data.json","UTF-8");
//        writer.println("first line");
//        writer.println("second line");
        writer.println(arg);
        writer.close();
    }
}
