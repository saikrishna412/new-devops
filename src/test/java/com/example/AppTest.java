package com.example;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
class AppTest {
    @Test void addsTwoNumbers() { assertEquals(5, App.add(2, 3)); }
    @Test void addsNegativeNumbers() { assertEquals(-5, App.add(-2, -3)); }
}
