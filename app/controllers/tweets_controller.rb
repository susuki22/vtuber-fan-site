class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet_comment = TweetComment.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if@tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end

  def search
    @tweets = Tweet.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :tweet_text)
  end

end
