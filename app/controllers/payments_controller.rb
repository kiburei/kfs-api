class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :update, :destroy]

    def index
      @payments = Payment.all
      json_response(@payment)
    end

    def create
      @payment = Payment.create!(payment_params)
      json_response(@payment, :created)
    end

    def show
      json_response(@payment)
    end

    def update
      @payment.update(payment_params)
      head :no_content
    end

    def destroy
      @payment.destroy
      head :no_content
    end

    private

    def set_payment
      @payment = Payment.find(params[:id])
    end

    def payment_params
      params.permit(:date, :vehicle_type, :reg_num, :amount_paid, :channel)
    end
end
