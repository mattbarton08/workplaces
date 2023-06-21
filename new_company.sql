SELECT * FROM new_company ORDER BY employees DESC

UPDATE new_company
SET employees = REPLACE(employees, ',', '');

ALTER TABLE new_company
ADD COLUMN new_employees INT;

-- Step 2: Copy data from the old column to the new column
UPDATE new_company
SET new_employees = CAST(employees AS INT);

-- Step 3: Drop the old column
ALTER TABLE new_company
DROP COLUMN employees;

-- Step 4: Rename the new column to the original column name
ALTER TABLE new_company
RENAME COLUMN new_employees TO employees;

ALTER TABLE new_company
ADD COLUMN employee_bin VARCHAR(20);

UPDATE new_company
SET employee_bin = CASE
        WHEN employees <= 10000 THEN '0-10000'
        WHEN employees <= 50000 THEN '10000-50000'
        WHEN employees <= 100000 THEN '50000-100000'
        ELSE '100000+'
    END
FROM
    new_company;