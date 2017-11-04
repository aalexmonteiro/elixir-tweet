defmodule MyTweetTest do
  use ExUnit.Case
  doctest MyTweet

  test "greets the world" do
    assert MyTweet.hello() == :world
  end
end
