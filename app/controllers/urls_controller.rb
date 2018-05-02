class UrlsController < ApplicationController
  def new
  	@shortee = Url.new
  end

  def create
  	@shortee = Url.new
  	@shortee.url = params[:url][:url]
  	if @shortee.save
  		flash[:shortee_id] = @shortee.id
  		redirect_to new_url_url
  	else
  		render :action => "new"
  	end
  end

  def show
  	@shortee = Url.find(params[:id])
  	p @shortee
  	redirect_to @shortee.url
  end
end
