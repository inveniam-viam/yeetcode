# Solution to Problem 2877: Create a DataFrame from List

# Solved with a runtime of 552ms (beats 52.76% users)

import pandas as pd

def getDataframeSize(players: pd.DataFrame) -> list[int]:

    return list(players.shape)
    