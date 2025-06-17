//TEST CLASS
public class Main {
    public static void main(String[] args) {
        Logger logger1 = Logger.getInstance();
        logger1.log("Logging from logger1.");

        Logger logger2 = Logger.getInstance();
        logger2.log("Logging from logger2.");

        // Check if both references point to the same instance
        if (logger1 == logger2) {
            System.out.println("Both loggers are the same instance (Singleton confirmed).");
        } else {
            System.out.println("Different instances (Singleton failed).");
        }
    }
}
