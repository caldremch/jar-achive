import sun.security.x509.AlgorithmId;
/**
 * Created by Leon on ${DATE}
 */
public class Main {

   private static String oidToAlgorithmName(String oid) {
        try {
            return AlgorithmId.get(oid).getName();
        } catch (Exception var2) {
            return oid;
        } catch (IllegalAccessError var3) {
            return oid;
        }
    }
    public static void main(String[] args) {
        System.out.println("Hello world!");
        System.out.println(oidToAlgorithmName("test"));

    }
}