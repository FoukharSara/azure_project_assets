<img width="578" alt="image" src="https://github.com/user-attachments/assets/df26aa32-9122-42a3-8157-7dc16d514274" />


# 🚀 Azure Data Pipeline Project

## 🧩 Project Overview

This project showcases an end-to-end Azure data pipeline that ingests data from **Kaggle (HTTP)**, stores it in **Azure Data Lake Gen2**, processes it with **Databricks (Apache Spark)**, and delivers insights via **Synapse Serverless SQL** and **Power BI**.

---

## 🔄 Data Flow

### 1. **Source**
- External data from **Kaggle (HTTP endpoint)**

### 2. **Data Ingestion**
- Using **Azure Data Factory**:
  - Dynamic Pipelines
  - Linked Services
  - `ForEach` Activities
  - Lookup Operations

### 3. **Data Storage**
- **Azure Data Lake Gen2**
- Access control:
  - Storage Access via IAM
  - Microsoft Entra ID / App Registration
  - Role-Based Access Control (RBAC)

### 4. **Data Transformation**
- **Azure Databricks with Apache Spark**
- Reads data from ADLS, applies transformations, and writes back

### 5. **Delivery**
- **Azure Synapse Analytics (Serverless SQL Pools)**
  - External tables for direct querying over Data Lake

### 6. **Visualization**
- **Power BI**
  - Connects to Synapse to build interactive dashboards

---
## 🔐 Access Control

- **Storage Access**: Managed via IAM roles
- **Databricks Access**: Controlled via workspace permissions
- **Synapse Access**: Uses Managed Identity

---

## ✅ How to Run

1. Upload dataset manually or via ADF to Data Lake Gen2
2. Trigger ADF pipeline to ingest raw data
3. Run transformation job in Databricks
4. Define external tables in Synapse over transformed data
5. Connect Power BI to Synapse and visualize insights

---

## 🏅 Medals Legend

- 🥇 **Delivery** – Fast and scalable querying via Synapse
- 🥈 **Transformation** – Distributed Spark engine in Databricks
- 🥉 **Storage** – Reliable, secure, and scalable via ADLS Gen2
