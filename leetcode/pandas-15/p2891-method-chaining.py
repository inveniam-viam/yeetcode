# beats 41.64% on runtime

import pandas as pd

def findHeavyAnimals(animals: pd.DataFrame) -> pd.DataFrame:

    reqd = animals[animals['weight'] > 100].sort_values(by = 'weight', ascending = False)

    return reqd[['name']]
