-- Scenario 1: Apply 1% discount to customers above age 60
DECLARE
  TYPE CustomerRec IS RECORD (
    CustomerID NUMBER,
    Age NUMBER,
    InterestRate NUMBER
  );

  TYPE CustomerTable IS TABLE OF CustomerRec;
  customers CustomerTable := CustomerTable(
    CustomerRec(1, 45, 8.5),
    CustomerRec(2, 65, 9.2),
    CustomerRec(3, 70, 10.0)
  );

BEGIN
  FOR i IN 1 .. customers.COUNT LOOP
    IF customers(i).Age > 60 THEN
      customers(i).InterestRate := customers(i).InterestRate - 1;
      DBMS_OUTPUT.PUT_LINE('Customer ' || customers(i).CustomerID ||
                           ' new interest rate: ' || customers(i).InterestRate);
    END IF;
  END LOOP;
END;
/
