-- Sales & Customer Analytics: create table and import the Superstore dataset (PostgreSQL)

DROP TABLE IF EXISTS superstore;

CREATE TABLE superstore (
    "Row ID"        INTEGER PRIMARY KEY,
    "Order ID"      TEXT,
    "Order Date"    DATE,
    "Ship Date"     DATE,
    "Ship Mode"     TEXT,
    "Customer ID"   TEXT,
    "Customer Name" TEXT,
    "Segment"       TEXT,
    "Country"       TEXT,
    "City"          TEXT,
    "State"         TEXT,
    "Postal Code"   TEXT,
    "Region"        TEXT,
    "Product ID"    TEXT,
    "Category"      TEXT,
    "Sub-Category"  TEXT,
    "Product Name"  TEXT,
    "Sales"         NUMERIC(10, 4),
    "Quantity"      INTEGER,
    "Discount"      NUMERIC(4, 2),
    "Profit"        NUMERIC(10, 4)
);

-- Import (run in psql from the repository root; dates in the CSV are M/D/YYYY)
SET datestyle = 'ISO, MDY';
\copy superstore FROM 'data/Sample_Superstore.csv' WITH (FORMAT csv, HEADER true, ENCODING 'LATIN1')
