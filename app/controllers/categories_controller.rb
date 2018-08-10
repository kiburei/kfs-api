class CategoriesController < ApplicationController
  def index
    @charges = Charge.distinct.pluck(:vehicle_category)
    json_response(@charges)
  end
end
