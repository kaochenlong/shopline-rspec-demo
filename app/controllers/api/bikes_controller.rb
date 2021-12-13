class Api::BikesController < ApplicationController
  def search
    keyword = params[:keyword] || ''
    results = Youbike::BikeInfo.call(keyword: keyword)

    render json: results
  end
end
