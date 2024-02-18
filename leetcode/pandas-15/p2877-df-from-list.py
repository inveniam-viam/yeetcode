# Solution to Problem 2877: Create a DataFrame from List

# Solved with a runtime of 514ms (beats 53.08% users)

import pandas as pd

def createDataframe(student_data: list[list[int]]) -> pd.DataFrame:
    """
    Write a solution to create a DataFrame from a 2D list called student_data.
    This 2D list contains the IDs and ages of some students.
    The DataFrame should have two columns, student_id and age, and be in the same order as the original 2D list.
    """

    return pd.DataFrame(
        {
            "student_id": [items[0] for items in student_data],
            "age": [items[1] for items in student_data],
        }
    )

    


    
