# beats 78.65% on runtime

import pandas as pd

def dropMissingData(students: pd.DataFrame) -> pd.DataFrame:

    return students.dropna(subset = 'name')
