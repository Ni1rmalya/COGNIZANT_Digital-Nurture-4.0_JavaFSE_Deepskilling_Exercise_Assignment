//TEST CLASS TO TEST BOTH THE SEARCHES
public class ECommerceSearchTest {
    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Shoes", "Footwear"),
            new Product(102, "Laptop", "Electronics"),
            new Product(103, "Shirt", "Apparel"),
            new Product(104, "Mobile", "Electronics"),
            new Product(105, "Book", "Stationery")
        };

        String searchItem = "Laptop";

        // Linear Search
        Product result1 = LinearSearch.linearSearch(products, searchItem);
        System.out.println("Linear Search Result: " + result1);

        // Binary Search
        BinarySearch.sortProductsByName(products);
        Product result2 = BinarySearch.binarySearch(products, searchItem);
        System.out.println("Binary Search Result: " + result2);
    }
}
