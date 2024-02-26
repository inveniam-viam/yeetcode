import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    
    author_viewed = views[views['author_id'] == views['viewer_id']]

    author_viewed.rename(columns = {'author_id': 'id'}, inplace = True)

    author_viewed.drop_duplicates(subset = "id", inplace = True)

    return author_viewed[['id']].sort_values(by='id')
