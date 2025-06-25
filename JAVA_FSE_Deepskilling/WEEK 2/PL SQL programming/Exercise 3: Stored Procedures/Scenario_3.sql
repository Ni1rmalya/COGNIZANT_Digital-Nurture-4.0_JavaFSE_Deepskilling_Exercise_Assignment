SET SERVEROUTPUT ON;
CREATE TABLE Accounts (
  AccountID NUMBER PRIMARY KEY,
  AccountType VARCHAR2(20),
  Balance NUMBER
);

-- Insert sample data
INSERT INTO Accounts VALUES (1, 'SAVINGS', 10000);
INSERT INTO Accounts VALUES (2, 'CURRENT', 5000);

-- Create the transfer procedure
CREATE OR REPLACE PROCEDURE TransferFunds(
  p_SourceAccountID IN NUMBER,
  p_TargetAccountID IN NUMBER,
  p_Amount IN NUMBER
) IS
  v_SourceBalance NUMBER;
BEGIN
  -- Check balance
  SELECT Balance INTO v_SourceBalance
  FROM Accounts
  WHERE AccountID = p_SourceAccountID;

  IF v_SourceBalance < p_Amount THEN
    RAISE_APPLICATION_ERROR(-20001, '❌ Insufficient balance.');
  END IF;

  -- Perform transfer
  UPDATE Accounts SET Balance = Balance - p_Amount WHERE AccountID = p_SourceAccountID;
  UPDATE Accounts SET Balance = Balance + p_Amount WHERE AccountID = p_TargetAccountID;

  DBMS_OUTPUT.PUT_LINE('Transferred Rs. ' || p_Amount || ' from Account ' ||
                        p_SourceAccountID || ' to Account ' || p_TargetAccountID);

  -- Show updated balances
  FOR acc IN (SELECT * FROM Accounts ORDER BY AccountID) LOOP
    DBMS_OUTPUT.PUT_LINE('AccountID: ' || acc.AccountID ||
                         ', Type: ' || acc.AccountType ||
                         ', Balance: ' || acc.Balance);
  END LOOP;
END;
/

-- Execute the procedure
BEGIN
  TransferFunds(1, 2, 3000);
END;
/
