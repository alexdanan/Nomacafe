class OrdersController < ApplicationController
  def create
    package = Package.find(params[:package_id])
    order  = Order.create!(package: package, amount: package.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: package.name,
        # images: [teddy.photo_url],
        amount: package.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    Credit.create!(user: current_user, amount: order.amount)


    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
  def show
    @order = current_user.orders.find(params[:id])
  end
end
