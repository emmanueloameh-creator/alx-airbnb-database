\# Airbnb Database Seeding Script



\## Overview

This directory contains SQL scripts that populate the Airbnb database with sample data for testing and demonstration.



\## Files

\- \*\*seed.sql\*\* — SQL `INSERT` statements to populate all tables.

\- \*\*README.md\*\* — This documentation file.



\## Entities Seeded

\- \*\*User\*\*: Sample hosts and guests.

\- \*\*Property\*\*: Realistic Airbnb-style listings.

\- \*\*Booking\*\*: Simulated booking transactions.

\- \*\*Payment\*\*: Associated payments for each booking.



\## How to Run

To execute this script in MySQL:

```sql

mysql -u root -p

source schema.sql;

source seed.sql;



