class Api::V1::ProductsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    prod = Product.all
    render json: { status: "SUCCESS", message: "Loaded successfully", data: prod }, status: :ok
  end

  def create
    prod = Product.create(product_params)
    render json: { status: "SUCCESS", message: "Created successfully", data: prod }, status: :ok
  end

  def show
    prod = Product.find(params[:id])
    render json: { status: "SUCCESS", message: "Fetched successfully", data: prod }, status: :ok
  end

  def destroy
    prod = Product.find(params[:id])
    prod.destroy
    render json: { status: "SUCCESS", message: "Deleted successfully", data: prod }, status: :ok
  end

  def update
    prod = Product.find(params[:id])
    prod.update(product_params)
    render json: { status: "SUCCESS", message: "Updated successfully", data: prod }, status: :ok
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :price)
  end
end
