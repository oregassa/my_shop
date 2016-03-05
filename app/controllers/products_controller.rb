class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all
  end



  def new
    @product = Product.new
  end



  def create
  	@product = Product.new(product_params)
    if @product.save 
      flash[:success] = "Product was successfully created"
      redirect_to products_path
    else 
      render 'new'
    end
  end



  def show
  end



  def edit
  end



  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "You've successfully updated"
      redirect_to products_path
    else
      render 'edit'
    end
  end



  def destroy
  	@product = Product.find(params[:id])
    if @product.destroy 
      flash[:danger] = "You've successfully deleted"
      redirect_to products_path
    else
      render 'update'
    end
  end



  private 

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :img_url, :price, :category)
  end

end
