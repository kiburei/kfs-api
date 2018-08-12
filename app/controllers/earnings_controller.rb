class EarningsController < ApplicationController
  def index
    @earnings = Payment.sum(:amount_paid)
    json_response(@earnings)
  end
end
