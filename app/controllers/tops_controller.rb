class TopsController < ApplicationController
    def index
    end

    def link
    end



    def new
        @tweet = Tweet.new
      end
    
      def create
        tweet = Tweet.new(tweet_params)
        if tweet.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def tweet_params
        params.require(:tweet).permit(:カラム名, :カラム名, :カラム名)
      end

      

end
