defmodule MyTweet.Scheduler do
  use Quantum.Scheduler,
    otp_app: :my_tweet
end
