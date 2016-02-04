class HomeController < ApplicationController
  def index
    @link = Link.new
  end

  def all
    @link = Link.new
    @links = Link.paginate(:page => params[:page], :per_page => 50)
  end
end