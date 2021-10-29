class ImagesController < ApplicationController

  def update
    image = Image.find(params[:id])
    image.url = params[:url] || image.url
    image.product_id = params[:product_id] || image.product_id
  end

end
