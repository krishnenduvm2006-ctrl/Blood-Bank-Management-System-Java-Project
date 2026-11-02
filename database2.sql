
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

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    donor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (donor_id)
        REFERENCES donors(donor_id)
);

INSERT INTO inventory (blood_group, units, expiry_date)
VALUES
('A+', 10, '2026-12-01'),
('A-', 5, '2026-12-05'),
('B+', 12, '2026-12-10'),
('B-', 4, '2026-12-12'),
('O+', 15, '2026-12-15'),
('O-', 6, '2026-12-18'),
('AB+', 8, '2026-12-20'),
('AB-', 3, '2026-12-22');
