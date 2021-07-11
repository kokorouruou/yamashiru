class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  private

  def tweet_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
end
