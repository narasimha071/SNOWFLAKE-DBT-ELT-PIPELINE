# 🏠 Airbnb Metadata-Driven ELT Pipeline using AWS S3, Snowflake & dbt

## 📋 Overview

This project demonstrates an end-to-end Metadata-Driven ELT Pipeline built using AWS S3, Snowflake, and dbt. The solution follows the Medallion Architecture (Bronze → Silver → Gold) and processes Airbnb booking, listing, and host data into analytics-ready datasets.

Raw source data is stored in Amazon S3 and loaded into Snowflake staging tables. dbt is then used to transform the data through multiple layers while implementing Incremental Loading, SCD Type 2 Snapshots, Upsert (MERGE) operations, Dynamic SQL Generation, and Metadata-Driven Transformations.

The project showcases modern data engineering practices for building scalable, maintainable, and production-ready data platforms.

---

# 🏗️ Architecture

```text
AWS S3 (Source Data)
        │
        ▼
Snowflake Staging Layer
        │
        ▼
Bronze Layer
        │
        ▼
Silver Layer
        │
        ▼
Gold Layer
        │
        ▼
Analytics & Reporting
```

---

# 🚀 Key Features

* Metadata-Driven ELT Architecture
* AWS S3 Data Ingestion
* Snowflake Cloud Data Warehouse
* dbt Core Transformations
* Bronze-Silver-Gold Data Modeling
* Incremental Loading
* SCD Type 2 Historical Tracking
* Upsert Logic using Snowflake MERGE
* Dynamic SQL Generation using Jinja
* Custom dbt Macros
* One Big Table (OBT)
* Fact Table Modeling
* Source Data Testing
* Automated Data Lineage
* Analytics-Ready Gold Layer

---

# 🔧 Technology Stack

| Component            | Technology             |
| -------------------- | ---------------------- |
| Data Lake            | AWS S3                 |
| Data Warehouse       | Snowflake              |
| Transformation Tool  | dbt Core               |
| Programming Language | Python                 |
| Query Language       | SQL                    |
| Templating Engine    | Jinja                  |
| Version Control      | Git & GitHub           |
| Architecture         | Medallion Architecture |

---

# 📊 Data Model

## 🥉 Bronze Layer

Raw data ingestion from Snowflake staging tables with minimal transformations.

### Models

* bronze_Bookings
* bronze_hosts
* bronze_listings

### Purpose

* Preserve raw source data
* Standardize column names
* Initial data validation

---

## 🥈 Silver Layer

Business-ready transformation layer.

### Models

* silver_Bookings
* silver_hosts
* silver_listings

### Features

* Incremental Processing
* Data Cleansing
* Business Logic Implementation
* Data Standardization

---

## 🥇 Gold Layer

Analytics-ready layer optimized for reporting and business intelligence.

### Models

* fact
* obt (One Big Table)

### Features

* Denormalized Reporting Tables
* Business Metrics
* Analytical Queries
* Dashboard Consumption

---

# 📁 Project Structure

```text
PROJECT-DBT/
│
├── projectnew/
│
│   ├── models/
│   │
│   ├── bronze/
│   │   ├── bronze_Bookings.sql
│   │   ├── bronze_hosts.sql
│   │   └── bronze_listings.sql
│   │
│   ├── silver/
│   │   ├── silver_Bookings.sql
│   │   ├── silver_hosts.sql
│   │   └── silver_listings.sql
│   │
│   ├── gold/
│   │   ├── fact.sql
│   │   ├── obt.sql
│   │   └── ephemeral/
│   │       ├── bookings.sql
│   │       ├── hosts.sql
│   │       └── listings.sql
│   │
│   ├── sources/
│   │   └── sources.yml
│   │
│   ├── snapshots/
│   │   ├── dim_bookings.yml
│   │   ├── dim_hosts.yml
│   │   └── dim_listings.yml
│   │
│   ├── tests/
│   │   └── source_tests.sql
│   │
│   ├── macros/
│   │   ├── generate_schema_name.sql
│   │   ├── multiply.sql
│   │   └── tag.sql
│   │
│   ├── seeds/
│   └── README.md
│
├── dbt_project.yml
├── pyproject.toml
├── main.py
├── README.md
└── .gitignore
```

---

# 📈 Advanced Data Engineering Concepts

## Metadata-Driven Pipeline

Implemented configurable ingestion and transformation logic using metadata-driven design patterns.

### Benefits

* Reduced hardcoded SQL
* Improved scalability
* Reusable framework
* Easier onboarding of new datasets

---

## Incremental Models

Implemented Incremental Loading to process only new and modified records.

### Benefits

* Faster execution
* Reduced Snowflake compute costs
* Improved scalability

```

---

## SCD Type 2 Snapshots

Implemented Slowly Changing Dimension Type 2 using dbt Snapshots.

### Snapshot Models

* dim_bookings
* dim_hosts
* dim_listings

### Benefits

* Historical Tracking
* Point-in-Time Analysis
* Auditability

---

## Upsert Processing

Implemented Snowflake MERGE statements for Insert and Update operations.

### Benefits

* Efficient Data Synchronization
* Reduced Data Duplication
* Optimized Processing

---

## Dynamic SQL Generation

Implemented reusable SQL generation using Jinja loops and custom macros.

### Custom Macros

* generate_schema_name.sql
* multiply.sql
* tag.sql

---

# 📊 Data Pipeline Flow

### Source Tables

* BOOKINGS
* HOSTS
* LISTINGS

### Bronze Models

* bronze_Bookings
* bronze_hosts
* bronze_listings

### Silver Models

* silver_Bookings
* silver_hosts
* silver_listings

### Gold Models

* fact
* obt

### Snapshots

* dim_bookings
* dim_hosts
* dim_listings

---

# ▶️ Running the Project

## Verify Connection

```bash
dbt debug
```

## Run Models

```bash
dbt run
```

## Run Tests

```bash
dbt test
```

## Run Snapshots

```bash
dbt snapshot
```

## Build Entire Project

```bash
dbt build
```

## Generate Documentation

```bash
dbt docs generate
dbt docs serve
```

---

# 🎯 Skills Demonstrated

* Snowflake
* AWS S3
* dbt Core
* SQL
* Python
* Metadata-Driven ELT
* Incremental Models
* SCD Type 2
* Upserts (MERGE)
* Data Warehousing
* Data Modeling
* Analytics Engineering
* Jinja Templating
* Git & GitHub

---
