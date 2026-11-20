# 📊 Customer Behavior Analysis

## Overview
This project focuses on analyzing customer purchasing behavior to identify trends, patterns, and actionable business insights. The analysis follows an end-to-end data analytics workflow, from data preparation and exploratory analysis to SQL-based analysis, dashboard development, and reporting.

The objective is to understand customer preferences, purchasing patterns, discount usage, and spending behavior to support data-driven business decisions.

## Dataset
- **Source:** [Dataset Source]
- **Format:** CSV
- **Data includes:** Customer demographics, purchase details, product categories, payment methods, discounts, subscription status, and customer ratings.

## Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **Jupyter Notebook:** Data exploration and analysis
- **PostgreSQL:** SQL queries and analytical data exploration
- **Power BI:** Interactive dashboard development
- **Gamma:** Presentation creation
- **Excel:** Data review and reporting

## Project Workflow

### 1. Data Loading & Exploratory Data Analysis (EDA)
- Imported the dataset using Python and Pandas.
- Explored dataset structure, dimensions, data types, and summary statistics.
- Identified patterns, distributions, and potential data quality issues.
- Performed exploratory data analysis using visualizations.

### 2. Data Cleaning & Preparation
- Handled missing and duplicate values.
- Corrected data types and inconsistent values.
- Prepared and transformed data for further analysis.
- Exported the cleaned dataset for SQL analysis.

### 3. SQL Analysis – PostgreSQL
- Imported the cleaned dataset into PostgreSQL.
- Performed analytical queries to investigate customer purchasing behavior.
- Used aggregations, filtering, grouping, subqueries, and conditional logic.
- Analyzed revenue, customer segments, discount usage, product preferences, and subscription patterns.

### 4. Power BI Dashboard
- Connected the cleaned dataset to Power BI.
- Created calculated measures using DAX.
- Developed interactive visualizations, KPIs, and slicers.
- Designed a dashboard to present key business metrics and insights.

### 5. Reporting & Presentation
- Created a comprehensive analytical report summarizing the findings.
- Developed a presentation using Gamma to communicate insights, trends, and business recommendations.

## Dashboard

The Power BI dashboard provides an interactive overview of customer purchasing behavior, including:

- Customer purchase patterns
- Revenue and spending analysis
- Product category performance
- Discount utilization
- Subscription status
- Customer segmentation

> Add your dashboard screenshots here.

## Key Results & Insights

The analysis helps identify:

- Customer purchasing trends and preferences.
- Product categories with higher purchase activity.
- The impact of discounts on purchasing behavior.
- Differences in spending across customer segments.
- Subscription patterns and customer engagement.
- Potential opportunities for improving sales and customer retention.

## Project Structure

```text
Customer-Behavior-Analysis/
│
├── dataset/
│   └── customer_data.csv
│
├── notebooks/
│   └── exploratory_data_analysis.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── customer_behavior_dashboard.pbix
│
├── reports/
│   └── analytical_report.pdf
│
├── presentation/
│   └── project_presentation.pdf
│
└── README.md
```

## How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Customer-Behavior-Analysis.git
```

### 2. Install Dependencies

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### 3. Run Python Analysis

Open the Jupyter Notebook:

```bash
jupyter notebook
```

Run the notebook to perform data loading, EDA, and data cleaning.

### 4. PostgreSQL Analysis
- Create a PostgreSQL database.
- Import the cleaned dataset into the database.
- Execute the SQL queries available in the `sql/` directory.

### 5. Power BI Dashboard
Open the `.pbix` file using Power BI Desktop to explore the interactive dashboard.

## Conclusion

This project demonstrates an end-to-end data analytics workflow involving Python-based data exploration and cleaning, PostgreSQL SQL analysis, Power BI dashboard development, and business reporting.

It showcases the ability to transform raw data into meaningful insights and communicate analytical findings through interactive dashboards and presentations.
