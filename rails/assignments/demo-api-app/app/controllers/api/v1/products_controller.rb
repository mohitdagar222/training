class Api::V1::CategoriesController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    prod = Product.all
    render json: { data: prod }
  end
end
