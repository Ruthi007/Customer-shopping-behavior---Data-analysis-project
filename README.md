# 🛍️ Customer Shopping Behavior Analysis

![Project Status](https://img.shields.io/badge/Status-Complete-success)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Python](https://img.shields.io/badge/Python-3.8+-yellow)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-orange)

## 📋 Overview

This project provides a comprehensive analysis of customer shopping behavior to help businesses make data-driven decisions. By examining purchasing patterns, customer demographics, and product performance, we uncover actionable insights that can improve sales strategies, optimize marketing campaigns, and enhance customer satisfaction.

## 🎯 Objectives

The analysis aims to answer critical business questions:

- **Gender Demographics**: How do male and female customers differ in their shopping behavior?
- **Subscription Impact**: What is the revenue contribution from subscribed vs non-subscribed customers?
- **Product Performance**: Which products and categories drive the most revenue?
- **Discount Strategy**: How effective are discounts in driving sales?
- **Customer Loyalty**: What patterns distinguish new, returning, and loyal customers?
- **Age Segmentation**: Which age groups contribute most to revenue?
- **Shipping Preferences**: How do shipping methods correlate with purchase values?

## 🛠️ Tech Stack

| Tool | Purpose | Version |
|------|---------|---------|
| **MySQL** | Data storage, querying, and analytical operations | 8.0+ |
| **Python** | Data cleaning, preprocessing, and statistical analysis | 3.8+ |
| **Pandas** | Data manipulation and exploratory analysis | Latest |
| **Matplotlib/Seaborn** | Data visualization and trend analysis | Latest |
| **Power BI** | Interactive dashboard creation and business intelligence | Desktop |

## 📊 Dataset Description

The `cust_shop` table contains the following key attributes:

- **Customer Demographics**: Customer ID, Age, Gender, Location
- **Purchase Details**: Product Name, Category, Purchase Amount, Quantity
- **Transaction Info**: Payment Method, Shipping Type, Discount Applied
- **Engagement Metrics**: Subscription Status, Review Rating, Previous Purchases

## 🔍 Analysis Workflow

### 1. Data Collection & Storage (MySQL)
- Imported raw customer shopping data into MySQL database
- Created optimized table structure for efficient querying
- Implemented indexing for performance optimization

### 2. SQL Analytics
Performed advanced queries to extract business insights:

```sql
-- Gender-based revenue analysis
-- Customer segmentation (New/Returning/Loyal)
-- Top-performing products and categories
-- Discount effectiveness measurement
-- Subscription impact on purchasing behavior
-- Age group revenue distribution
```

### 3. Data Preprocessing (Python)
- Handled missing values and data inconsistencies
- Performed data type conversions and formatting
- Generated statistical summaries
- Created derived features for deeper analysis

### 4. Visualization & Dashboard (Power BI)
Built an interactive dashboard featuring:
- Revenue breakdown by gender and category
- Customer segmentation analysis
- Product performance rankings
- Discount impact visualization
- Subscription vs non-subscription comparison
- Key performance indicators (KPIs)

## 💡 Key Insights

### Revenue & Demographics
- **Male customers** contribute slightly higher revenue compared to female customers
- Customers aged **30-45** represent the highest spending demographic

### Customer Loyalty
- **Loyal customers** have 2-3x higher average purchase amounts than new customers
- Customers with **3+ previous purchases** show significantly higher retention rates

### Shipping & Payment
- **Express shipping** correlates with 40% larger purchase values
- Standard shipping remains the most popular option overall

### Discount Strategy
- Products with **discounts see 60% higher order frequency**
- Strategic discounting drives both volume and customer acquisition

### Product Performance
- **Top-rated products (4.5+ stars)** show strong correlation with purchase volume
- Category leaders drive 45% of total revenue

## 🚀 Getting Started

### Prerequisites

```bash
# MySQL 8.0 or higher
# Python 3.8 or higher
# Power BI Desktop
# Jupyter Notebook
```

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/customer-shopping-behavior-analysis.git
cd customer-shopping-behavior-analysis
```

2. **Set up MySQL Database**
```bash
mysql -u your_username -p
CREATE DATABASE mydb;
USE mydb;
SOURCE customer_behavior.sql;
```

3. **Install Python Dependencies**
```bash
pip install pandas numpy matplotlib seaborn jupyter mysql-connector-python
```

4. **Run Python Analysis**
```bash
jupyter notebook customer_shopping_behavior.ipynb
```

5. **Open Power BI Dashboard**
- Launch Power BI Desktop
- Open `customer_behavior_dashboard.pbix`
- Refresh data connections if needed

## 📁 Repository Structure

```
Customer-shopping-behavior-analysis/
│
├── data/
│   └── raw_data.csv                        # Original dataset (if applicable)
│
├── sql/
│   └── customer_behavior.sql               # MySQL queries and schema
│
├── notebooks/
│   └── customer_shopping_behavior.ipynb    # Python analysis notebook
│
├── dashboards/
│   └── customer_behavior_dashboard.pbix    # Power BI dashboard
│
└──README.md                                # Project documentation
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



---

⭐ **If you found this project helpful, please consider giving it a star!** ⭐
