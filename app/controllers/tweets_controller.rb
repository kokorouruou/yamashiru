class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_tweet, only: [:edit, :show, :update]
  before_action :search_tweet, only: [:index, :search]
  before_action :move_to_index, except: [:index, :show, :new, :create, :search]

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
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def search
    @results = @p.result.includes(@tweet)
  end

  def edit
  end

  def update
    @tweet.update(tweet_params)
    if @tweet.save
      redirect_to tweet_path
    else
      render :edit
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
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

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    @tweet = Tweet.find(params[:id])
    unless user_signed_in? && current_user.id == @tweet.user_id
      redirect_to action: :index
  end

 end

end
