class PaymentController < ApplicationController
  def index
  	rand(10)
  end

  def process_payment
    session[:params] = params
  end

  def confirm_payment
    redirect_to "#{params[:payment_return_url]}?status=#{params[:status]}&order_no=#{params[:order_no]}"
  end

end
