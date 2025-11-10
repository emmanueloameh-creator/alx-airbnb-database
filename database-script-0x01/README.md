\# Airbnb Database Schema



\## Overview

This directory contains the SQL scripts used to define the Airbnb database schema.



\## Files

\- \*\*schema.sql\*\* — Contains all `CREATE TABLE` statements with primary/foreign keys and constraints.

\- \*\*README.md\*\* — This documentation file.



\## Database Entities

\- `User` — stores user details.

\- `Property` — stores property listings and references the user as host.

\- `Booking` — manages bookings between users and properties.

\- `Payment` — records payment transactions related to bookings.



\## Constraints

\- Primary keys ensure unique identification.

\- Foreign keys maintain referential integrity.

\- Unique constraints prevent duplicate emails.

\- Indexes improve performance for queries (e.g., searching by city or email).



\## How to Run

To execute this script in MySQL:

```sql

mysql -u root -p

source schema.sql;



