class DreamsController < ApplicationController
  def index
      @dreams = Dream.all
  end
  
  def new
      @dream = Dream.new
  end
      
  def create
    Dream.create!(dream_params)
    redirect_to dreams_path
  end
     
  def dream_params
    params.require(:dream).permit(:author, :content, :photo_url, :rating, :tags)
  end
  def destroy
    Dream.find(params[:id]).destroy
    redirect_to dreams_path
  end
end
