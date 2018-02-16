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
    switch(c) {
      case "ib":
        return new int[] {0x6B,0x43};
      case "n":
        return new int[] {0xF,0xD};
      case "la":
        return new int[] {0x6A,0x1F};
      case "wb":
        return new int[] {0x4D,0x2A};
      case "tb":
        return new int[] {0x59,0x7B};
      case "yc":
        return new int[] {0x70,0x33};
      case "ub":
        return new int[] {0x34,0x1};
      case "pb":
        return new int[] {0x8,0x50};
      case "fa":
        return new int[] {0x23,0x50};
      case "jb":
        return new int[] {0x1b,0x2C};
      case "ua":
        return new int[] {0x4A,0x34};
      case "x":
        return new int[] {0x43,0x43};
    }
    return new int[] {0x00,0x00};
  }

  private static void write(String s, boolean n) {
    if(n) System.out.println(s);
    else System.out.print(s);
  }
  private static void write(int s, boolean n) { write(s+"", n); }
}
