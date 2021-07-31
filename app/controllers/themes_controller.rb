class ThemesController < ApplicationController

  before_action :search_tweet, only: [:index]

  
  def index
    @tweets = Tweet.all
  end

  def new
  end
  

  private

  def search_tweet
    @p = Tweet.ransack(params[:q])
  end
end
