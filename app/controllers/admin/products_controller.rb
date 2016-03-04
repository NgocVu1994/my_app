class Admin::ProductsController < ApplicationController
  load_and_authorize_resource except: :index

  def index
    @products = Product.paginate page: params[:page], per_page: Settings.products.page
    @categories = Category.all
    @product = Product.new 
  end

  def new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = t "admin.product.create_product_sucess"
      redirect_to admin_products_path
    else
      flash[:warning] = t "admin.product.create_product_fail"
      redirect_to :back
    end
  end

  private

    def product_params
      params.require(:product).permit :name, :content, :price, :category_id
    end
end
