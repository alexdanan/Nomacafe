class PackagesController < ApplicationController
  before_action :skip_pundit?
  def index
    @packages = policy_scope(Package)
    @orders = Order.where(user: current_user)

    credits = Credit.where(user: current_user)
    @amounts = credits.map do |credit|
      credit.amount
    end
  end
end
