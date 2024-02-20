import pandas as pd

def selectFirstRows(employees: pd.DataFrame) -> pd.DataFrame:

    return employees.loc[:2]
    

# alt

def selectFirstRowsAlt(employees: pd.DataFrame) -> pd.DataFrame:

    return employees.head(3)
