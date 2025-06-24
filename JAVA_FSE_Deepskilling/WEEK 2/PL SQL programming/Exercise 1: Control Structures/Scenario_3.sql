-- Scenario 3: Print loan reminders

DECLARE
  TYPE LoanRec IS RECORD (
    LoanID NUMBER,
    CustomerName VARCHAR2(50),
    DueDate DATE
  );

  TYPE LoanTable IS TABLE OF LoanRec;
  loans LoanTable := LoanTable(
    LoanRec(1, 'Nirmalya', SYSDATE + 10),
    LoanRec(2, 'Riya', SYSDATE + 40),
    LoanRec(3, 'Sourav', SYSDATE + 5)
  );

BEGIN
  FOR i IN 1 .. loans.COUNT LOOP
    IF loans(i).DueDate <= SYSDATE + 30 THEN
      DBMS_OUTPUT.PUT_LINE('Reminder: Dear ' || loans(i).CustomerName ||
                           ', your loan (Loan ID: ' || loans(i).LoanID ||
                           ') is due on ' || TO_CHAR(loans(i).DueDate, 'DD-MON-YYYY'));
    END IF;
  END LOOP;
END;
/
