import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

df = pd.read_csv('customer_shopping_behavior.csv')

print(len(df))

print(df.info)

print(df.describe(include='all'))
print(df.isnull().sum())
df['Review Rating'] = df.groupby('Category')['Review Rating'].transform(lambda x: x.fillna(x.median()))
print(df.isnull().sum())

df.columns = df.columns.str.lower()
df.columns = df.columns.str.replace(" ", "_")
df = df.rename(columns={'purchase_amount_(usd)':'purchase_amount'})

labels =['Young_Adults','Adult', 'Middle_Age','Seniors']
df['age_groups'] = pd.qcut(df['age'],q=4,labels=labels)

 
print(df['frequency_of_purchases'].unique())

frequency_mapping ={    
                        'Fortnightly':14, 
                        'Weekly':7,  
                        'Annually':365,      
                        'Quarterly':90,
                        'Bi-Weekly':14,        
                        'Monthly':30, 
                        'Every 3 Months':90
                        }

df['Frequency_of_days'] = df['frequency_of_purchases'].map(frequency_mapping)

print(df[['frequency_of_purchases','Frequency_of_days']].head(10))
print((df['discount_applied'] == df['promo_code_used']).all())
df.drop('promo_code_used',axis=1, inplace=True)
print(df.head(0))

from sqlalchemy import create_engine

username = "postgres"
password = quote_plus("nive@2020")
host = "localhost"
port = "5432"
database = "Customer_behaviour_analysis"

engine = create_engine(
    f"postgresql+psycopg2://{username}:{password}@{host}:{port}/{database}"
)

table_name = "customer"
df.to_sql(table_name,engine,if_exists="replace", index=False)

print(f"data successfully loaded into table {table_name} in database {database}") 