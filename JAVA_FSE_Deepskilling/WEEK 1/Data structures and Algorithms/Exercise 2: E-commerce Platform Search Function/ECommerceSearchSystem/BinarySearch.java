import java.util.Arrays;
import java.util.Comparator;

public class BinarySearch {
    public static void sort(Product[] list) {
        Arrays.sort(list, new Comparator<Product>() {
            public int compare(Product a, Product b) {
                return a.productName.toLowerCase().compareTo(b.productName.toLowerCase());
            }
        });
    }

    public static Product search(Product[] list, String key) {
        int low = 0, high = list.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;
            int cmp = list[mid].productName.compareToIgnoreCase(key);

            if (cmp == 0) return list[mid];
            else if (cmp < 0) low = mid + 1;
            else high = mid - 1;
        }
        return null;
    }
}
