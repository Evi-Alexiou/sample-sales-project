import pandas as pd
from sqlalchemy import create_engine

# Dataset URL (reference only)
url = "https://www.kaggle.com/datasets/kyanyoga/sample-sales-data"
# Note: To run this CSV directly, a Kaggle API token is required.
# You can download the CSV manually and read it from your local path.
# df = pd.read_csv('path/to/sales_data_sample.csv')

print(f"Dataset reference: {url}")

# Read CSV file
df = pd.read_csv(url)

# Clean column names (remove leading/trailing spaces)
df.columns = df.columns.str.strip()

# Capitalize columns: first letter uppercase, rest lowercase
df.columns = [col.capitalize() for col in df.columns]

# Create a new column 'Revenue' = Quantity * Price
df['Revenue'] = df['Quantityordered'] * df['Priceeach']

# Optional: convert data types
df['Quantityordered'] = df['Quantityordered'].astype(int)
df['Priceeach'] = df['Priceeach'].astype(float)
df['Revenue'] = df['Revenue'].astype(float)

# Connect to PostgreSQL
# Example PostgreSQL connection string (replace with your own credentials)
engine = create_engine("postgresql://user:password@host:port/dbname")

# Write the DataFrame to PostgreSQL table
df.to_sql('sample_sales', engine, if_exists='replace', index=False)

print("ETL completed successfully!")
