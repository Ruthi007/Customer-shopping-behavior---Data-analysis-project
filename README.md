Customer Shopping Behavior – Data Analysis Project
Overview

This project analyzes customer shopping behavior to uncover insights that can help businesses improve sales, understand customer preferences, and enhance marketing strategies.
The analysis is performed using MySQL for data querying, Python (Pandas) for data cleaning and exploration, and Power BI for creating an interactive visualization dashboard.

Objective

To identify key patterns and trends in customer shopping behavior such as:

Gender-based spending comparison

Impact of subscription on total revenue

Top-performing products and categories

Discount effectiveness

Customer segmentation and loyalty behavior

Revenue contribution from different age groups

⚙️ Tech Stack
Tool	Purpose

MySQL	Data storage and advanced analytical queries

Python (Pandas, Matplotlib/Seaborn)	Data preprocessing, analysis, and visualization

Power BI	Dashboard creation and insight presentation

🗂️ Project Workflow

1. Data Source

The dataset (cust_shop table) contains customer shopping details including demographics, purchases, discounts, and reviews.

2. MySQL Analysis

Key analytical queries include:

Gender-based revenue comparison

Top 5 rated products

Customer segmentation (New, Returning, Loyal)

Discount-based performance

Subscription vs Non-subscription purchase behavior

Top 3 products per category

Revenue by age group

3. Python (Pandas) Analysis

Data cleaning and handling of missing values

Statistical summary and visualization

Exploratory analysis to identify trends before visualization

4. Power BI Dashboard

The interactive dashboard visualizes:

Sales by gender, category, and age group

Revenue trends by subscription status

Top-selling products and customer segments

KPIs highlighting average spend and loyalty patterns

📊 Key Insights

Male customers contributed a slightly higher share of revenue than females.

Loyal customers have a much higher average purchase amount.

Express shipping tends to be associated with larger purchases.

Products with discounts see significantly higher order frequency.

Top-rated products correlate strongly with higher purchase volumes.

🚀 How to Run

1️⃣ MySQL Analysis

-- Connect to MySQL and run:

USE mydb;

SOURCE customer_behavior.sql;

2️⃣ Python Notebook

Open the Jupyter Notebook:

jupyter notebook customer_shopping_behavior.ipynb

3️⃣ Power BI Dashboard

Open customer_behavior_dashboard.pbix in Power BI Desktop to view visual insights.

📁 Repository Structure

Customer-shopping-behavior---Data-analysis-project/
│
├── customer_behavior_dashboard.pbix        # Power BI dashboard
├── customer_shopping_behavior.ipynb         # Python data analysis
├── customer_behavior.sql                    # MySQL queries
└── README.md                                # Project documentation
