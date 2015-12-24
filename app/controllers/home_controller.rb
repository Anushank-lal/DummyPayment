class HomeController < ApplicationController
  def index
    @order_no = params[:order_no]
    @amount = param[:amount]
  end
end
