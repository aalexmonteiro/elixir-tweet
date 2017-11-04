defmodule MyTweet.Tweet do
  def send(str) do
    ExTwitter.configure(:process,
      [
        consumer_key: System.get_env("MY_TWEET_CONSUMER_KEY"),
        consumer_secret: System.get_env("MY_TWEET_CONSUMER_SECRET"),
        access_token: System.get_env("MY_TWEET_TOKEN"),
        access_token_secret: System.get_env("MY_TWEET_TOKEN_SECRET")
      ]
    )
    ExTwitter.update(str)
  end

  def send_random(file) do
    MyTweet.FileReader.get_strings_to_tweet(file)
    |> send
  end
end
