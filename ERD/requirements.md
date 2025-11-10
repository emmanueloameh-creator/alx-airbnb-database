\# ER Diagram – ALX Airbnb Database



\## Overview

This diagram models the database for an Airbnb-like system that handles users, properties, bookings, payments, and reviews.



\## Entities

\- \*\*User\*\*: Represents both guests and hosts.

\- \*\*Property\*\*: Represents properties listed by hosts.

\- \*\*Booking\*\*: Records reservations made by users.

\- \*\*Payment\*\*: Stores payment information for each booking.

\- \*\*Review\*\*: Tracks reviews left by users on properties.

\- \*\*Property\_Image\*\*: Stores multiple images for each property.



\## Relationships

\- A \*\*User\*\* (host) can list many \*\*Properties\*\*.

\- A \*\*User\*\* (guest) can make many \*\*Bookings\*\*.

\- Each \*\*Booking\*\* belongs to one \*\*Property\*\* and one \*\*User\*\*.

\- Each \*\*Booking\*\* has one \*\*Payment\*\*.

\- A \*\*User\*\* can leave many \*\*Reviews\*\*.

\- Each \*\*Property\*\* can have many \*\*Reviews\*\*.

\- Each \*\*Property\*\* can have many \*\*Property\_Images\*\*.



\## Tools

Created using \[Draw.io](https://app.diagrams.net).



\## Normalization

Database design follows \*\*Third Normal Form (3NF)\*\* to minimize redundancy and maintain data integrity.



