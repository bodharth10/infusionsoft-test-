class CrmsController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  def index
    
  end

  # def create
  # 	 redirect_to "https://wwww.google.com" , :status => 301
  # end

  def product_revenue
    p '#{request.referer}'
    redirect_to "http://www.google.com" ,status: 301
  end

  def tag_import
  	p '#{params}'
  end

  def notification
  	
  end

  def show
    
  end
end
