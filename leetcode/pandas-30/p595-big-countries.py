# beats only 23.21% users on runtime


import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:

    big_check = ((world['population'] >= 25e6) | (world['area'] >= 3e6))

    return world[big_check][['name', 'population', 'area']]
    

# alt - beats 57.61% users on runtime

def alt_big_countries(world: pd.DataFrame) -> pd.DataFrame:

    big_pop = world[world['population'] >= 25e6][['name', 'population', 'area']]
    big_area = world[world['area'] >= 3e6][['name', 'population', 'area']]

    big_ones = pd.concat([big_pop, big_area], ignore_index = False).drop_duplicates()

    return big_ones
