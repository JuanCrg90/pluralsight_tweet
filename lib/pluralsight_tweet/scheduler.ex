defmodule PluralsightTweet.Scheduler do
  use Quantum.Scheduler, otp_app: :pluralsight_tweet

  def schedule_file(file) do
    Path.join("#{:code.priv_dir(:pluralsight_tweet)}", file)
    |> PluralsightTweet.FileReader.get_strings_to_tweet
    |> PluralsightTweet.TweetServer.tweet
  end
end
