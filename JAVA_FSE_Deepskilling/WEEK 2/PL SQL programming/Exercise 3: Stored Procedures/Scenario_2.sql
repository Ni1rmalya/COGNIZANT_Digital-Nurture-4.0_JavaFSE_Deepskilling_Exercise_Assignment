SET SERVEROUTPUT ON;

CREATE TABLE Employees (
  EmployeeID NUMBER PRIMARY KEY,
  DepartmentID NUMBER,
  Salary NUMBER
);

-- Insert sample data
INSERT INTO Employees VALUES (101, 1, 50000);
INSERT INTO Employees VALUES (102, 1, 55000);
INSERT INTO Employees VALUES (103, 2, 60000);

-- Create the procedure to apply bonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
  p_DepartmentID IN NUMBER,
  p_BonusPercent IN NUMBER
) IS
BEGIN
  UPDATE Employees
  SET Salary = Salary + (Salary * p_BonusPercent / 100)
  WHERE DepartmentID = p_DepartmentID;

  DBMS_OUTPUT.PUT_LINE('Bonus of ' || p_BonusPercent || '% applied to Department ' || p_DepartmentID);

  -- Show updated salaries
  FOR emp IN (SELECT * FROM Employees ORDER BY EmployeeID) LOOP
    DBMS_OUTPUT.PUT_LINE('EmployeeID: ' || emp.EmployeeID ||
                         ', Dept: ' || emp.DepartmentID ||
                         ', Salary: ' || emp.Salary);
  END LOOP;
END;
/

-- Execute the procedure
BEGIN
  UpdateEmployeeBonus(1, 10);
END;
/
