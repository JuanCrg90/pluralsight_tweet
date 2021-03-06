defmodule FileReaderTest do
  use ExUnit.Case
  import PluralsightTweet.FileReader

  test "Passing a file should return a string" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt"))

    assert str != nil
  end
end
