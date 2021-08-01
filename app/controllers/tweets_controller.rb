class TweetsController < ApplicationController

  before_action :search_tweet, only: [:index, :search]

  def index
    #@tweets = Tweet.where(theme_id: '1')
    @tweets = Tweet.order("created_at DESC")
    @results = @p.result.includes(@tweet)
    set_tweet_column
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

  def show
    @tweet = Tweet.find(params[:id])
  end

  def search
    @results = @p.result.includes(@tweet)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :title, :theme_id, :prefecture_id, :mountain_name_id, :climbing_time_id, :mountain_view_id, :stamina_id, :danger_id).merge(user_id: current_user.id)
  end

  def search_tweet
    @p = Tweet.ransack(params[:q])
  end

  def set_tweet_column
    @tweet_name = Tweet.select("name").distinct  
  end

end
