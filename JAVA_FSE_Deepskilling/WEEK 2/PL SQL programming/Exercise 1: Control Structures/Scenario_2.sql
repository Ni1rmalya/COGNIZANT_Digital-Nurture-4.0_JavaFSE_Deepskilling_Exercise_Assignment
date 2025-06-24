-- Scenario 2: Set IsVIP = TRUE if balance > 10000

DECLARE
  TYPE CustomerRec IS RECORD (
    CustomerID NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(10)
  );

  TYPE CustomerTable IS TABLE OF CustomerRec;
  customers CustomerTable := CustomerTable(
    CustomerRec(1, 8000, 'FALSE'),
    CustomerRec(2, 15000, 'FALSE'),
    CustomerRec(3, 11000, 'FALSE')
  );

BEGIN
  FOR i IN 1 .. customers.COUNT LOOP
    IF customers(i).Balance > 10000 THEN
      customers(i).IsVIP := 'TRUE';
      DBMS_OUTPUT.PUT_LINE('Customer ' || customers(i).CustomerID || ' is now VIP');
    END IF;
  END LOOP;
END;
/
