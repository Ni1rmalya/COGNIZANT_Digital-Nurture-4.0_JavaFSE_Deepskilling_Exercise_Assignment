public class LinearSearch {
    public static Product search(Product[] list, String key) {
        for (Product p : list) {
            if (p.productName.equalsIgnoreCase(key)) {
                return p;
            }
        }
        return null;
    }
}
