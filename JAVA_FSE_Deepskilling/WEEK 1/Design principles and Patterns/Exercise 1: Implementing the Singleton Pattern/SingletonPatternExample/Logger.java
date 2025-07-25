public class Logger {
    // Private static instance
    private static Logger instance;

    // Private constructor to prevent instantiation
    private Logger() {
        System.out.println("Logger initialized.");
    }

    // Public method to provide access to the instance
    public static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();  //initialization
        }
        return instance;
    }

    // A sample method to log messages
    public void log(String message) {
        System.out.println("LOG: " + message);
    }
}
