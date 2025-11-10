-- Airbnb Database Seeding Script
-- Author: Moyosore Adeeko
-- Description: Populates the Airbnb-like database with realistic sample data.

-- =============================
-- USERS
-- =============================
INSERT INTO User (full_name, email, phone, password)
VALUES
('John Doe', 'john.doe@example.com', '+2348012345678', 'password123'),
('Mary Johnson', 'mary.j@example.com', '+2348098765432', 'securepass'),
('David Smith', 'david.smith@example.com', '+2348022334455', 'davidpass'),
('Grace Allen', 'grace.a@example.com', '+2348033344556', 'gracepass');

-- =============================
-- PROPERTIES
-- =============================
INSERT INTO Property (host_id, title, description, address, city, country, price_per_night)
VALUES
(1, 'Modern Apartment in Lagos', '2-bedroom apartment with ocean view.', '12 Victoria Island St', 'Lagos', 'Nigeria', 25000.00),
(2, 'Cozy Cottage in Abuja', 'Peaceful cottage surrounded by nature.', '7 Maitama Hills', 'Abuja', 'Nigeria', 18000.00),
(3, 'Luxury Villa in Port Harcourt', 'Spacious villa with swimming pool.', '3 GRA Phase II', 'Port Harcourt', 'Nigeria', 50000.00);

-- =============================
-- BOOKINGS
-- =============================
INSERT INTO Booking (user_id, property_id, start_date, end_date, total_price, status)
VALUES
(2, 1, '2025-11-01', '2025-11-05', 100000.00, 'confirmed'),
(3, 2, '2025-11-10', '2025-11-12', 36000.00, 'pending'),
(4, 3, '2025-11-20', '2025-11-25', 250000.00, 'confirmed');

-- =============================
-- PAYMENTS
-- =============================
INSERT INTO Payment (booking_id, amount, payment_method, status)
VALUES
(1, 100000.00, 'card', 'success'),
(2, 36000.00, 'paypal', 'pending'),
(3, 250000.00, 'transfer', 'success');
