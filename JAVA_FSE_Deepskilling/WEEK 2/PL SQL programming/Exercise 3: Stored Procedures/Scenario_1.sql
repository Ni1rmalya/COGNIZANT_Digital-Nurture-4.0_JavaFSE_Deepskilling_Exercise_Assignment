SET SERVEROUTPUT ON;

CREATE TABLE Accounts (
  AccountID NUMBER PRIMARY KEY,
  AccountType VARCHAR2(20),
  Balance NUMBER
);

-- Insert sample data
INSERT INTO Accounts VALUES (1, 'SAVINGS', 10000);
INSERT INTO Accounts VALUES (2, 'SAVINGS', 20000);
INSERT INTO Accounts VALUES (3, 'CURRENT', 15000);

-- Create the procedure to apply 1% interest and print balances
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
  -- Applying interest
  UPDATE Accounts
  SET Balance = Balance + (Balance * 0.01)
  WHERE AccountType = 'SAVINGS';

  DBMS_OUTPUT.PUT_LINE('Interest applied to all savings accounts.');

  -- updated balances
  FOR acc IN (SELECT * FROM Accounts ORDER BY AccountID) LOOP
    DBMS_OUTPUT.PUT_LINE('AccountID: ' || acc.AccountID ||
                         ', Type: ' || acc.AccountType ||
                         ', Balance: ' || acc.Balance);
  END LOOP;
END;
/


BEGIN
  ProcessMonthlyInterest;
END;
/
