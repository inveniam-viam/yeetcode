# beats 52% on runtime

import pandas as pd

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:

    tweets['valid_flag'] = tweets['content'].apply(lambda x: True if len(x) <= 15 else False)

    return tweets[tweets['valid_flag'] == False][['tweet_id']]
    