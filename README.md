# ER Diagram – ALX Airbnb Database

## Overview
This diagram models the database for an Airbnb-like system with entities for users, properties, bookings, payments, and reviews.

## Entities
- **User**: Represents both guests and hosts.
- **Property**: Listings created by hosts.
- **Booking**: Reservations made by users.
- **Payment**: Records payments for bookings.
- **Review**: Feedback users give about properties.

## Relationships
- A User can list many Properties.
- A User can make many Bookings.
- Each Booking is linked to one Property.
- Each Booking has one Payment.
- Users can leave Reviews for Properties.

## Tools
Created using [Draw.io](https://app.diagrams.net).

## Normalization
All tables are designed up to 3NF to minimize redundancy and ensure data integrity.
