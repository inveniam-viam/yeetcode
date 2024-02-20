# problem 2885

# beats 64.69% on runtime


import pandas as pd

def renameColumns(students: pd.DataFrame) -> pd.DataFrame:

    students.rename(columns = {"id": "student_id",
                                "first": "first_name",
                                "last": "last_name",
                                "age": "age_in_years"}, inplace = True)
    
    return students
        