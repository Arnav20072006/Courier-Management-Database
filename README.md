# Courier & Parcel Delivery Management Database

An individual academic project built using **MySQL** and **MySQL Workbench** to model the database operations of a courier and parcel delivery service.

> **Scope:** This is a relational database and SQL demonstration project, not a deployed courier-tracking website or an integration with FedEx.

## Overview

The database models the journey of a parcel from customer booking through shipment processing, tracking, delivery assignment, payment, and customer feedback. It also models branches, employees, and delivery agents.

## Technologies

- MySQL
- MySQL Workbench
- SQL (DDL, DML, joins, subqueries, aggregations, transactions, views, triggers, and stored procedures)

## Data model

The project includes these 11 tables:

| Table | Purpose |
| --- | --- |
| `customers` | Individual and business customer records |
| `addresses` | Customer delivery and pickup addresses |
| `branches` | Courier hubs and branches |
| `employees` | Branch employee information |
| `parcels` | Parcel booking and package details |
| `shipments` | Shipment records and status |
| `tracking` | Shipment movement and tracking history |
| `delivery_agents` | Delivery personnel |
| `delivery_assignments` | Shipment-to-agent assignments |
| `payments` | Parcel payment records and statuses |
| `delivery_ratings` | Customer feedback and delivery experience |

The schema uses primary and foreign keys to link these entities.

## SQL concepts demonstrated

- Relational schema creation and constraints
- Sample data insertion and modification
- Filtering, sorting, and aggregations
- `INNER JOIN`, `LEFT JOIN`, and self-joins
- Nested and correlated subqueries
- Views for shipment details and customer addresses
- Transactions using `COMMIT`, `ROLLBACK`, and `SAVEPOINT`
- A payment-status trigger
- Stored procedures for fetching shipment details and counting shipments by status
- Basic user privileges with `GRANT` and `REVOKE`

## Example questions the database can answer

- Which shipments have been delivered or are in transit?
- How many parcels exist in each parcel category?
- Which parcels have a declared value above the average?
- Which branches are connected to particular shipments?
- How many shipments have a particular status?

## Running the project

1. Install MySQL Server and MySQL Workbench.
2. Open `database.sql` in MySQL Workbench.
3. Review the script before running it: the original classroom file contains examples that modify and drop objects.
4. Execute the schema creation and data insertion sections in a fresh database.
5. Run the analysis and demonstration queries separately.

**Note:** The original project was developed for coursework. The script should be retested from a fresh database before being described as a one-click installation.

## Project ownership

Individual academic database project.

## Next improvements

- Split database setup and SQL demonstrations into separate scripts.
- Add a database ER diagram and screenshots of query results.
- Test the setup from a clean MySQL instance.
- Document any known assumptions and limitations.

## Disclaimer

This is an educational courier/logistics database. It is not affiliated with FedEx or any real courier company. Sample records are for demonstration.
