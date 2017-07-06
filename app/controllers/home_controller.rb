class HomeController < ApplicationController  
  before_action :set_new_url_bank

  def index
  end

  def create    
    @short_url = UrlBank.new(url_bank_params).generate
    render :index
  end

  def search
    @actual_url = UrlBank.get_actual_url(params[:short_url])
    render :index
  end

  private    
    def set_new_url_bank
      @url_bank = UrlBank.new
    end

    def url_bank_params
      params.require(:url_bank).permit(:actual_url)
    end
end
