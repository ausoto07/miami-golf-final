class ChargesController < ApplicationController
  def new
  end

  def create
  # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:email],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to booking_success_path
  end

end
