class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @show_product = Product.find(params[:id])
  end

  def new
    @categories = Category.all
  end

  def edit
    @edit_product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    category = Category.find(new_product_params[:category])
    product = Product.new(name: new_product_params[:name], description: new_product_params[:description], pricing: new_product_params[:pricing], category: category)
    if product.save
      redirect_to "/products/index"
    end
  end

  def update
    category = Category.find(update_product_params[:category])
    product = Product.find(params[:id]).update(name:update_product_params[:name], description: update_product_params[:description], pricing:update_product_params[:pricing], category:category)
    if product
      redirect_to '/products/index'
    end
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to '/products/index'
  end

  def comment
    product = Product.find(params[:id])
    comment = Comment.new(comment: params[:comment], product:product)
    if comment.save
      redirect_to '/products/index'
    end
  end

  def comments
    @products = Product.all
    @comments = Comment.all
  end


  private
  def new_product_params
    params.require(:new_product).permit(:name,:description,:pricing,:category)
  end

  def update_product_params
    params.require(:update_product).permit(:name,:description,:pricing,:category)
  end


end
