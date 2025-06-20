public class FinancialForecast {

    // Recursive method
    public static double futureValueRecursive(double amount, double rate, int years) {
        if (years == 0) {
            return amount;
        }
        return futureValueRecursive(amount * (1 + rate), rate, years - 1);
    }
}
