import java.util.Scanner;
import java.util.stream.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;

public class decryptDir {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter path: ");
    String pName = sc.nextLine();

    decPath(pName);
  }

  public static void decPath(String pName) {
    try(Stream<Path> paths = Files.walk(Paths.get(pName))) {
      paths.forEach((p)->{
        if(Files.isRegularFile(p)) decryptFile.decrypt(p);
        else if(Files.isDirectory(p) && !p.toString().equals(pName))
          decPath(p.toString());
      });
    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}
