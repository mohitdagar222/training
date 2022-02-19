class Api::V1::CategoriesController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    category = Category.all
    render json: { status: "SUCCESS", message: "Loaded successfully", data: ActiveModelSerializers::SerializableResource.new(category, each_serializer: ProductSerializer) }
  end

  def create
    category = Category.create(category_params)
    render json: { status: "SUCCESS", message: "Created successfully", data: category }, status: :ok
  end

  def show
    category = Category.find(params[:id])
    render json: { status: "SUCCESS", message: "Fetched successfully", data: category }, status: :ok
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    render json: { status: "SUCCESS", message: "Deleted successfully", data: category }, status: :ok
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    render json: { status: "SUCCESS", message: "Updated successfully", data: category }, status: :ok
  end

  private

  def category_params
    params.require(:category).permit(:id, :name)
  end
end
