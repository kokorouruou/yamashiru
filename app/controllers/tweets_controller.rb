class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :image, :theme_id, :prefecture_id, :mountain_name_id, :climbing_time_id, :mountain_view_id, :stamina_id, :danger_id).merge(user_id: current_user.id)
  end
end
