CREATE TABLE swimming_pools (
    id SERIAL PRIMARY KEY,
    pool_name VARCHAR(255) NOT NULL,
    owner_name VARCHAR(255) NOT NULL,
    contact_number VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    city VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    opening_hours JSONB NOT NULL,
    length_m DECIMAL(5, 2) NOT NULL,
    width_m DECIMAL(5, 2) NOT NULL,
    min_depth_m DECIMAL(4, 2) NOT NULL,
    max_depth_m DECIMAL(4, 2) NOT NULL,
    water_source VARCHAR(100) NOT NULL,
    filtration_system_type VARCHAR(100) NOT NULL,
    water_testing_frequency VARCHAR(50) NOT NULL,
    lifeguard_available BOOLEAN DEFAULT false,
    emergency_equipment_available BOOLEAN DEFAULT false,
    cctv_installed BOOLEAN DEFAULT false,
    changing_rooms_available BOOLEAN DEFAULT false,
    locker_facility BOOLEAN DEFAULT false,
    operating_license_uploaded BOOLEAN DEFAULT false,
    api_endpoint VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index for geolocation search
CREATE INDEX idx_swimming_pools_location ON swimming_pools (latitude, longitude);

-- Sample data
INSERT INTO swimming_pools (
    pool_name, owner_name, contact_number, email, address, city, postal_code,
    latitude, longitude, opening_hours, length_m, width_m, min_depth_m, max_depth_m,
    water_source, filtration_system_type, water_testing_frequency,
    lifeguard_available, emergency_equipment_available, cctv_installed,
    changing_rooms_available, locker_facility, operating_license_uploaded,
    api_endpoint
) VALUES
(
    'Attapur Aqua Sports',
    'Rahul Sharma',
    '+919876543210',
    'rahul@attapuraquasports.com',
    '123 Attapur Main Road',
    'Hyderabad',
    '500048',
    17.3850,
    78.4867,
    '{"monday": "06:00-21:00", "tuesday": "06:00-21:00", "wednesday": "06:00-21:00", "thursday": "06:00-21:00", "friday": "06:00-21:00", "saturday": "07:00-20:00", "sunday": "07:00-20:00"}',
    25.0,
    15.0,
    1.2,
    2.5,
    'Municipal Water',
    'Sand Filtration',
    'Daily',
    true,
    true,
    true,
    true,
    true,
    true,
    'http://localhost:3001/api/pool-data/1'
),
(
    'Hyderabad Swimming Academy',
    'Priya Patel',
    '+919876543211',
    'priya@hydswimming.com',
    '456 Attapur Cross Road',
    'Hyderabad',
    '500048',
    17.3855,
    78.4870,
    '{"monday": "05:00-22:00", "tuesday": "05:00-22:00", "wednesday": "05:00-22:00", "thursday": "05:00-22:00", "friday": "05:00-22:00", "saturday": "06:00-21:00", "sunday": "06:00-21:00"}',
    50.0,
    25.0,
    1.0,
    3.0,
    'Well Water',
    'Cartridge Filtration',
    'Twice Daily',
    true,
    true,
    true,
    true,
    true,
    true,
    'http://localhost:3001/api/pool-data/2'
),
(
    'Attapur Olympic Pool',
    'Vikram Singh',
    '+919876543212',
    'vikram@olympicpool.com',
    '789 Attapur Circle',
    'Hyderabad',
    '500048',
    17.3845,
    78.4865,
    '{"monday": "06:00-22:00", "tuesday": "06:00-22:00", "wednesday": "06:00-22:00", "thursday": "06:00-22:00", "friday": "06:00-22:00", "saturday": "07:00-21:00", "sunday": "07:00-21:00"}',
    30.0,
    20.0,
    1.5,
    3.5,
    'Municipal Water',
    'Advanced Filtration',
    'Continuous',
    true,
    true,
    true,
    true,
    true,
    true,
    'http://localhost:3001/api/pool-data/3'
); 