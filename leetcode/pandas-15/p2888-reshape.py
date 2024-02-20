# only beats 24.25% users on runtime (672ms)

import pandas as pd

def concatenateTables(df1: pd.DataFrame, df2: pd.DataFrame) -> pd.DataFrame:

    x = pd.concat([df1, df2], ignore_index = False)

    return x
    