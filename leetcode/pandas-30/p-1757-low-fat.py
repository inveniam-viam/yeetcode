import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    
    truth_condition = (products['low_fats'] == "Y") & (products['recyclable'] == "Y")

    cols = products[truth_condition]

    return cols[['product_id']]
