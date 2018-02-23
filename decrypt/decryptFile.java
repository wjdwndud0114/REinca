import java.util.Scanner;
import java.util.List;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.charset.StandardCharsets;

public class decryptFile {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter file name: ");
    String fName = sc.nextLine();
    Path path = Paths.get(fName);

    decrypt(path);
  }

  public static void decrypt(Path path) {
    System.err.printf("Decrypting %s...", path.toString());

    try {
      List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
      int posCounter = -1;

      while(posCounter++ < lines.size()-5) { // Assume decryption call is within 5 lines
        String line = lines.get(posCounter);
        int linePos = posCounter;
        if(line.length() > 0 && line.indexOf("\"") > -1) {
          if(line.indexOf("#") > -1) {
            if(line.indexOf("\"") > line.indexOf("#") ||
                line.lastIndexOf("\"") < line.indexOf("#")) {
              continue;
            }
          }
          String s = line.substring(line.indexOf("\"")+1,line.lastIndexOf("\""));
          String findClass = lines.get(posCounter++);
          int counter = 0;
          while((findClass.indexOf("Lcom/inca/security/") == -1 ||
                findClass.indexOf("Lcom/inca/security/lb") > 0) && counter != 5) {
            findClass = lines.get(posCounter++);
            if(findClass.indexOf("Lcom/inca/security/lb") > -1) {
              findClass = lines.get(posCounter++);
            }
            if(posCounter > lines.size() || counter == 5 || findClass.indexOf("\"") > 0) {
              System.err.println("ERROR: no decryption class found for: "+line+"; linenumber: "+linePos);
              findClass = "";
              break;
            }
            counter++;
          }
          if(findClass == "" || counter == 5 ||
              findClass.indexOf("Lcom/inca/security") == -1) continue;
          if(findClass.indexOf("\"") > 0) {
            posCounter--;
            continue;
          }
          String c = findClass.substring(
            findClass.indexOf("Lcom/inca/security/")+19,findClass.indexOf(";"));
          String decrypted = decryptString.encrypt(c, s);
          lines.set(linePos,line+" #"+decrypted);
        }
      }
      Files.write(path, lines, StandardCharsets.UTF_8);
    } catch(Exception e) {
      e.printStackTrace();
    }

    System.err.printf("\nFinished decrypting %s.\n", path.toString());
  }
}
