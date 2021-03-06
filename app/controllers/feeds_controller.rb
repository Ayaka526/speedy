class FeedsController < ApplicationController

  def top
    @entries= Entry.limit(10)
    @feeds = Feed.all
    @user = current_user

  end

  private

    def feed_params
      params.require(:feed).permit(:name, :title, :url, :description)
    end
end
