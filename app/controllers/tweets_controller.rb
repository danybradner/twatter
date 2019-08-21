class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def new
        @tweet = Tweet.new
    end

    def create
        tweet_details = params.require(:tweet).permit(:text)
        #user_id = cookies[:user_id]
        #user = User.find(user_id)
        @tweet = Tweet.new(tweet_details)
        #@tweet.user = user
        if @tweet.save
            redirect_to :index
        else
            redirect_to new_tweet_url(@tweet)
        end
    end
    
    def show
        tweet = params[:text]
    end

    def Submit
        tweet = params[:text]
        cookies[:tweet] = user_details
        redirect_to '/users/me'
    end
end
    