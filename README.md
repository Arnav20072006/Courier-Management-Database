# Courier & Parcel Delivery Management Database

An individual academic project built with **MySQL** and **MySQL Workbench** to model courier operations, from parcel bookings through shipment tracking, delivery assignments, payments, and customer feedback.

> **Project scope:** This is a relational database and SQL demonstration project, not a deployed courier-tracking website or an integration with a real courier company. Records are for educational demonstration.

## Overview

The database connects customers and their addresses with parcels, shipments, shipment-tracking updates, delivery agents, payments, and delivery feedback. Branch and employee tables model the operational side of the business.

## Technologies

- MySQL and MySQL Workbench
- SQL: relational schema design, DDL, DML, joins, aggregation, subqueries, views, transactions, triggers, and stored procedures

## Database structure

The database contains **11 tables**:

| Table | Purpose |
| --- | --- |
| `customers` | Stores individual and business customers |
| `addresses` | Stores customer pickup and delivery addresses |
| `branches` | Represents courier hubs and branches |
| `employees` | Stores branch employee details |
| `parcels` | Records bookings and parcel details |
| `shipments` | Tracks shipments and their statuses |
| `tracking` | Records shipment movement and status updates |
| `delivery_agents` | Stores delivery personnel |
| `delivery_assignments` | Connects shipments to delivery agents |
| `payments` | Records parcel payments and payment statuses |
| `delivery_ratings` | Stores delivery feedback and ratings |

## Entity relationship diagram

The diagram highlights the principal table relationships; it omits most columns for readability.

```mermaid
erDiagram
    CUSTOMERS {
        INT customer_id PK
        VARCHAR customer_name
    }
    ADDRESSES {
        INT address_id PK
        INT customer_id FK
    }
    BRANCHES {
        INT branch_id PK
        VARCHAR branch_name
    }
    EMPLOYEES {
        INT employee_id PK
        INT branch_id FK
        VARCHAR job_role
    }
    PARCELS {
        INT parcel_id PK
        INT customer_id FK
        INT pickup_address_id FK
        INT delivery_address_id FK
    }
    SHIPMENTS {
        INT shipment_id PK
        INT parcel_id FK
        INT origin_branch_id FK
        INT destination_branch_id FK
    }
    TRACKING {
        INT tracking_id PK
        INT shipment_id FK
        INT branch_id FK
    }
    DELIVERY_AGENTS {
        INT agent_id PK
        INT branch_id FK
    }
    DELIVERY_ASSIGNMENTS {
        INT assignment_id PK
        INT shipment_id FK
        INT agent_id FK
    }
    PAYMENTS {
        INT payment_id PK
        INT parcel_id FK
    }
    DELIVERY_RATINGS {
        INT rating_id PK
        INT shipment_id FK
        INT customer_id FK
    }

    CUSTOMERS ||--o{ ADDRESSES : has
    CUSTOMERS ||--o{ PARCELS : books
    CUSTOMERS ||--o{ DELIVERY_RATINGS : gives
    ADDRESSES ||--o{ PARCELS : pickup_address
    ADDRESSES ||--o{ PARCELS : delivery_address
    BRANCHES ||--o{ EMPLOYEES : employs
    BRANCHES ||--o{ SHIPMENTS : origin_branch
    BRANCHES ||--o{ SHIPMENTS : destination_branch
    BRANCHES ||--o{ TRACKING : logs_updates
    BRANCHES ||--o{ DELIVERY_AGENTS : has
    PARCELS ||--o| SHIPMENTS : becomes
    PARCELS ||--o{ PAYMENTS : has
    SHIPMENTS ||--o{ TRACKING : has
    SHIPMENTS ||--o{ DELIVERY_ASSIGNMENTS : assigned_in
    SHIPMENTS ||--o| DELIVERY_RATINGS : receives
    DELIVERY_AGENTS ||--o{ DELIVERY_ASSIGNMENTS : handles
```

## SQL concepts demonstrated

- Primary keys, foreign keys, and other constraints
- `INSERT`, `UPDATE`, `DELETE`, filtering, and sorting
- `INNER JOIN`, `LEFT JOIN`, and self-joins
- Aggregate functions, `GROUP BY`, and `HAVING`
- Nested and correlated subqueries
- Views for shipment and customer-address details
- Transactions with `COMMIT`, `ROLLBACK`, and `SAVEPOINT`
- A trigger for defaulting missing payment status
- Stored procedures for shipment details and counts by status

## Repository files

- [`database.sql`](database.sql) — Creates and populates the relational database, including sample data.
- [`examples.sql`](examples.sql) — Demonstrates SQL queries and selected database features. Run examples selectively and review operations that modify data or objects.

## How to run

1. Install **MySQL Server** and open **MySQL Workbench**.
2. Open `database.sql` in Workbench. The script targets the `FedExProject` schema; use a fresh schema or change the schema name if it already exists.
3. Execute the entire setup file. If MySQL Workbench reports **Error 1175 (safe update mode)**, review the UPDATE statements and run the script in a session with safe updates temporarily disabled (`SET SQL_SAFE_UPDATES = 0;`), restoring your previous setting afterward.
4. Verify that the tables exist with `SHOW TABLES;` and inspect records with a sample `SELECT` query.
5. Open `examples.sql` and run the relevant examples separately. These are demonstrations, not all necessary for initial setup.

**Validation:** The database setup was run in a separate test schema using MySQL Workbench after addressing a safe-update restriction. The full examples script has not been independently tested end to end.

## Project ownership

Individual academic database project.

## Disclaimer

This is an educational courier/logistics project, not affiliated with FedEx or any other delivery company. All sample records are for demonstration purposes.
