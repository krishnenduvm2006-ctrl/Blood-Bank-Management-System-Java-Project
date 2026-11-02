
CREATE DATABASE blood_bank;
USE blood_bank;

CREATE TABLE donors (
    donor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    blood_group VARCHAR(5) NOT NULL
);

CREATE TABLE hospitals (
    hospital_id INT PRIMARY KEY AUTO_INCREMENT,
    hospital_name VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    blood_group VARCHAR(5) NOT NULL,
    units INT NOT NULL DEFAULT 0,
    expiry_date DATE
);

CREATE TABLE blood_requests (
    request_id INT PRIMARY KEY AUTO_INCREMENT,
    hospital_id INT NOT NULL,
    blood_group VARCHAR(5) NOT NULL,
    units_requested INT NOT NULL,
    priority VARCHAR(20) DEFAULT 'Normal',
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (hospital_id)
        REFERENCES hospitals(hospital_id)
);
