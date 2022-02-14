class ProductsController < ApplicationController
  before_action :users_login

  def index
    @products = Product.where(user_id: session[:user_id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = session[:user_id]
    if @product.save
      flash[:message] = "Product created Successfully"
      redirect_to "/products"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to "/products"
  end

  def delete
    Product.find(params[:id]).destroy
    redirect_to "/products"
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def users_login
    if session[:user_id] == nil
      flash[:message] = "You Must Be Logged In"
      redirect_to "/"
    end
  end
end
