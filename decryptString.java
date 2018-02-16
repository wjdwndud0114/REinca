import java.util.Scanner;
import static org.apache.commons.text.StringEscapeUtils.unescapeJava;

public class decryptString {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    while(true) {
      write("Enter class: ", false);
      String c = sc.nextLine();
      write("Enter string: ", false);
      String s = sc.nextLine();
      write(encrypt(c,s), true);
    }
  }

  public static String encrypt(String c, String str) {
    char[] s = unescapeJava(str).toCharArray();
    int[] keys = getKeys(c);
    int i = s.length;
    char[] arr = new char[i];
    int j = i-1;
    for(i = j; j >= 0; i = j) {
      j = s[i];
      int k = i-1;
      arr[i] = ((char)(j ^ keys[0]));
      if(k < 0) break;
      j = k-1;
      arr[k] = ((char)(s[k] ^ keys[1]));
    }
    return new String(arr);
  }

  public static int[] getKeys(String c) {
    if(c.equals("ib")) return new int[] {0x6B,0x43};
    else if(c.equals("n")) return new int[] {0xF,0xD};
    else return new int[] {0,0};
  }

  private static void write(String s, boolean n) {
    if(n) System.out.println(s);
    else System.out.print(s);
  }
  private static void write(int s, boolean n) { write(s+"", n); }
}
