class PaymentController < ApplicationController
  def index
  	rand(10)
  end

  def process_payment
    session[:params] = params
  end

  def confirm_payment
    if params[:status]
      redirect_to session[:params][:payment_return_url]
    else
      redirect_to session[:params][:payment_return_url]
    end
  end

end
