class EntriesController < ApplicationController
 before_action :set_feed, only: :index

  def index
    @entry = Entry.find(params[:id])
    @entries = @feed.entries.page(params[:page]).reverse_order
    params[:feeds_id]
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def set_feed
    @feed = Feed.find(params[:id])
  end
end
