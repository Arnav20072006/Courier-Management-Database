-- Courier & Parcel Delivery Management Database
-- Optional SQL demonstrations. Run after database.sql.
-- These demonstrations use the project's sample data and should be run in a test database.
USE FedExProject;

-- Basic filtering and sorting
SELECT shipment_id, tracking_number, shipment_status FROM shipments;
SELECT parcel_id, parcel_type, weight_kg FROM parcels WHERE weight_kg > 5;
SELECT parcel_id, parcel_type, weight_kg FROM parcels ORDER BY weight_kg DESC LIMIT 5;

-- Aggregates and grouping
SELECT COUNT(*) AS total_parcels FROM parcels;
SELECT parcel_type, COUNT(*) AS total_parcels FROM parcels GROUP BY parcel_type;
SELECT parcel_type, AVG(weight_kg) AS average_weight
FROM parcels
GROUP BY parcel_type
HAVING AVG(weight_kg) > 2
ORDER BY average_weight DESC;

-- Joins
SELECT s.shipment_id, s.tracking_number, p.parcel_type, p.weight_kg
FROM shipments AS s
INNER JOIN parcels AS p ON s.parcel_id = p.parcel_id;

SELECT c.customer_id, c.customer_name, a.city, a.address_type
FROM customers AS c
LEFT JOIN addresses AS a ON c.customer_id = a.customer_id;

SELECT s.shipment_id, s.tracking_number, p.parcel_type, b.branch_name
FROM shipments AS s
JOIN parcels AS p ON s.parcel_id = p.parcel_id
JOIN branches AS b ON s.origin_branch_id = b.branch_id;

-- Subqueries, including a correlated subquery
SELECT parcel_id, parcel_type, declared_value
FROM parcels
WHERE declared_value > (SELECT AVG(declared_value) FROM parcels);

SELECT p.parcel_id, p.customer_id, p.declared_value
FROM parcels AS p
WHERE p.declared_value > (
    SELECT AVG(p2.declared_value)
    FROM parcels AS p2
    WHERE p2.customer_id = p.customer_id
);

-- Views; CREATE OR REPLACE allows rerunning this section.
CREATE OR REPLACE VIEW shipment_details AS
SELECT s.shipment_id, s.tracking_number, s.shipment_status,
       p.parcel_type, p.weight_kg
FROM shipments AS s
JOIN parcels AS p ON s.parcel_id = p.parcel_id;

CREATE OR REPLACE VIEW customer_addresses AS
SELECT c.customer_id, c.customer_name, a.city, a.address_type
FROM customers AS c
LEFT JOIN addresses AS a ON c.customer_id = a.customer_id;

SELECT * FROM shipment_details WHERE shipment_status = 'Delivered';
SELECT * FROM customer_addresses LIMIT 10;

-- Trigger: insert a default status if NULL is submitted.
-- Requires the privilege to CREATE TRIGGER; rerunning drops/recreates the project demo trigger.
DROP TRIGGER IF EXISTS before_payment_insert;
DELIMITER //
CREATE TRIGGER before_payment_insert
BEFORE INSERT ON payments
FOR EACH ROW
BEGIN
    IF NEW.payment_status IS NULL THEN
        SET NEW.payment_status = 'Pending';
    END IF;
END //
DELIMITER ;

-- Stored procedures: project-specific reporting operations.
DROP PROCEDURE IF EXISTS GetShipmentDetails;
DROP PROCEDURE IF EXISTS CountShipmentsByStatus;
DELIMITER //
CREATE PROCEDURE GetShipmentDetails(IN sid INT)
BEGIN
    SELECT shipment_id, tracking_number, shipment_status, shipment_date
    FROM shipments WHERE shipment_id = sid;
END //

CREATE PROCEDURE CountShipmentsByStatus(IN s_status VARCHAR(30))
BEGIN
    SELECT shipment_status, COUNT(*) AS total_shipments
    FROM shipments
    WHERE shipment_status = s_status
    GROUP BY shipment_status;
END //
DELIMITER ;

CALL GetShipmentDetails(1);
CALL CountShipmentsByStatus('Delivered');

-- Transaction demonstration; ROLLBACK leaves the committed sample data unchanged.
START TRANSACTION;
UPDATE payments SET payment_status = 'Pending' WHERE payment_id = 100;
SELECT payment_id, payment_status FROM payments WHERE payment_id = 100;
ROLLBACK;

-- Savepoint demonstration; the final ROLLBACK prevents permanent changes.
START TRANSACTION;
UPDATE payments SET payment_status = 'Pending' WHERE payment_id = 98;
SAVEPOINT sp1;
UPDATE payments SET payment_status = 'Pending' WHERE payment_id = 99;
SAVEPOINT sp2;
UPDATE payments SET payment_status = 'Pending' WHERE payment_id = 100;
ROLLBACK TO SAVEPOINT sp2;
ROLLBACK;

-- Security note: CREATE USER / GRANT / REVOKE omitted intentionally.
-- Do not publish example account passwords or run privilege changes on a shared server.
