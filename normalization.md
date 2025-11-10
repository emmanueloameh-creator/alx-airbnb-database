\# Airbnb Database Normalization



\## Objective

To ensure the Airbnb database design is in \*\*Third Normal Form (3NF)\*\* by removing redundancy and ensuring data integrity.



---



\## Step 1 — First Normal Form (1NF)

\*\*Rule:\*\* Each column should contain atomic (indivisible) values, and each record should be unique.



\*\*Action:\*\*

\- Ensured that all tables have a primary key.

\- Removed repeating groups (e.g., if a user had multiple phone numbers, they would be moved to a separate `UserContact` table).

\- Each field holds only one piece of information (e.g., `email`, not multiple emails).



\*\*Result:\*\*

All tables now have unique rows with atomic values.



---



\## Step 2 — Second Normal Form (2NF)

\*\*Rule:\*\* Must be in 1NF and every non-key attribute must depend on the whole primary key.



\*\*Action:\*\*

\- Identified composite keys (if any).  

&nbsp; Example: If `Booking` had a composite key (`user\_id`, `property\_id`), ensure all other fields depend on both.

\- Moved partial dependencies to new tables.



\*\*Result:\*\*

Each attribute depends on the entire key, not part of it.



---



\## Step 3 — Third Normal Form (3NF)

\*\*Rule:\*\* Must be in 2NF, and all attributes must depend only on the primary key (no transitive dependencies).



\*\*Action:\*\*

\- Removed attributes that depend on non-key fields.  

&nbsp; Example: If `property\_host\_name` existed in the `Property` table, it was removed since it depends on `User`, not `Property`.

\- Linked related data using foreign keys instead of duplicating data.



\*\*Result:\*\*

All tables now satisfy 3NF.



---



\## Final Normalized Tables



\### \*\*User\*\*

| Field | Type | Description |

|-------|------|-------------|

| user\_id (PK) | INT | Unique identifier |

| name | VARCHAR | Full name |

| email | VARCHAR | User’s email |

| phone | VARCHAR | Contact number |

| created\_at | DATETIME | Registration date |



\### \*\*Property\*\*

| Field | Type | Description |

|-------|------|-------------|

| property\_id (PK) | INT | Unique property ID |

| host\_id (FK) | INT | References `User(user\_id)` |

| title | VARCHAR | Listing title |

| description | TEXT | Property details |

| address | VARCHAR | Location |

| price\_per\_night | DECIMAL | Cost per night |

| created\_at | DATETIME | Date listed |



\### \*\*Booking\*\*

| Field | Type | Description |

|-------|------|-------------|

| booking\_id (PK) | INT | Unique booking ID |

| user\_id (FK) | INT | References `User(user\_id)` |

| property\_id (FK) | INT | References `Property(property\_id)` |

| start\_date | DATE | Check-in |

| end\_date | DATE | Check-out |

| total\_price | DECIMAL | Total cost |

| status | VARCHAR | e.g., confirmed, cancelled |



\### \*\*Payment\*\*

| Field | Type | Description |

|-------|------|-------------|

| payment\_id (PK) | INT | Unique payment ID |

| booking\_id (FK) | INT | References `Booking(booking\_id)` |

| amount | DECIMAL | Payment amount |

| payment\_method | VARCHAR | e.g., card, PayPal |

| payment\_date | DATE | Date processed |

| status | VARCHAR | Payment status |



---



\## ✅ Conclusion

After applying normalization steps up to 3NF:

\- No redundant data exists across tables.

\- Each table focuses on a single concept.

\- Relationships are defined through primary and foreign keys.

\- The design is efficient, scalable, and maintains data integrity.



