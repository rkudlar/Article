class LinkController < ApplicationController

  def index
  end

  def show
  end

  def create
#    @link = Link.create long_link: params[:link]["long_link"]
    Links::GenerateShortLinkService.call(params)
    #redirect_to root_path
  end

  def url
    link = Link.find_by(short_link: params[:url])
    redirect_to link.long_link
  end

end
