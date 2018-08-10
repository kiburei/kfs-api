class ChargesController < ApplicationController
  before_action :set_charges, only: [:show, :update, :destroy]

    def index
      @charges = Charge.where(vehicle_category: params[:vehicle_category])
      json_response(@charges)
    end

    def category
      @charges = Charge.where(vehicle_category: params[:vehicle_category])
      json_response(@charges)
    end

    def create
      @charges = Charge.create!(charges_params)
      json_response(@charges, :created)
    end

    def show
      json_response(@charges)
    end

    def update
      @charges.update(charges_params)
      head :no_content
    end

    def destroy
      @charges.destroy
      head :no_content
    end

    private

    def set_charges
      @charges = Charge.find(params[:id])
    end

    def charges_params
      params.permit(:fee_code, :vehicle_category, :vehicle_length, :toll_charge)
    end
end
