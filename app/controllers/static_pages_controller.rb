class StaticPagesController < ApplicationController
  def home
    client = Pexels::Client.new(ENV["PEXELS_API_KEY"])
    if params[:collection_id].present?
      @photos = client.collections[params[:collection_id]].media
    else
      @photos = []
    end
  end
end
