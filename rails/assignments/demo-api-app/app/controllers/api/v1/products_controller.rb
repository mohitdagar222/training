class Api::V1::ProductsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    category = Category.find_by(id: params[:category_id])
    if category.present?
      product = category.products
    else
      product = Product.all
    end
    render json: { status: "SUCCESS", message: "Loaded successfully", data: ActiveModelSerializers::SerializableResource.new(product, each_serializer: ProductSerializer) }
  end

  def create
    category = Category.find_by(id: params[:category_id])
    if category.present?
      product = category.products.create(product_params)
    else
      product = Product.create(product_params)
    end
    render json: { status: "SUCCESS", message: "Created successfully", data: product }, status: :ok
  end

  def show
    product = Product.find(params[:id])
    render json: { status: "SUCCESS", message: "Fetched successfully", data: product }, status: :ok
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { status: "SUCCESS", message: "Deleted successfully", data: product }, status: :ok
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    render json: { status: "SUCCESS", message: "Updated successfully", data: product }, status: :ok
  end

  private

  def product_params
    params.permit(:id, :name, :price, :category_id)
  end
end
