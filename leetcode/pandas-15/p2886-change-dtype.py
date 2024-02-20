# beats 56.8% on runtime

import pandas as pd

def changeDatatype(students: pd.DataFrame) -> pd.DataFrame:

    students['grade'] = students['grade'].astype(int)

    return students
    