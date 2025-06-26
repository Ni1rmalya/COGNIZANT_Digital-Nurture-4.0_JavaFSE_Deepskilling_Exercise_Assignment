package org.example;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class CalculatorTest {

    @Test
    public void testAddition() {
        Calculator calc = new Calculator();
        assertEquals(15, calc.add());
    }

    @Test
    public void testSubtraction() {
        Calculator calc = new Calculator();
        assertEquals(5, calc.subtract());
    }
}
