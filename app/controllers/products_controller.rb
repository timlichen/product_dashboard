class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :show, :update, :delete]
  before_action :set_comment, only: [:show]

  def index
    @products = Product.all
  end

  def new
    @categories = Category.all
  end

  def create
    @product = Product.create(product_params)
    redirect_to '/'
  end

  def show
    @comment
  end

  def edit
    @categories = Category.all
  end

  def update
    puts "routed correctly"
    @product.update( product_params )
    redirect_to '/'
  end

  def delete
    @product.delete
    redirect_to '/'
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :pricing, :category_id)
  end

  def set_comment
    @comment = Comment.where(product_id: @product.id.to_s ).find_each
  end

  def set_product
    @product = Product.find( params[:id] )
  end
end
