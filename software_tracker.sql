CREATE TABLE IF NOT EXISTS software (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    version TEXT,
    license_type TEXT,
    renewal_date TEXT,
    notes TEXT
);

-- Add a program
INSERT INTO software (name, version, license_type, renewal_date, notes)
VALUES ('Example App', '2.1', 'Subscription', '2027-03-15', 'Purchased from the official website');

-- View your software list
SELECT name, version, license_type, renewal_date, notes
FROM software
ORDER BY name;

-- Find subscriptions renewing in the next 30 days
SELECT name, renewal_date
FROM software
WHERE renewal_date BETWEEN date('now') AND date('now', '+30 days')
ORDER BY renewal_date;

-- Update a record (replace 1 with the software ID)
UPDATE software
SET version = '2.2'
WHERE id = 1;