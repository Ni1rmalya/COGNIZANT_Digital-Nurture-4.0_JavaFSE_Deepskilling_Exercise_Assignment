//TEST CLASS
public class ForecastTest {
    public static void main(String[] args) {
        double initialAmount = 10000;
        double growthRate = 0.10;
        int numberOfYears = 5;

        double resultRecursive = FinancialForecast.futureValueRecursive(initialAmount, growthRate, numberOfYears);

        System.out.printf("Future Value (Recursive):%.2f\n", resultRecursive);
    }
}
