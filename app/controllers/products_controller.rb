class ProductsController < ApplicationController
  load_and_authorize_resource except: :index
  before_action :load_category, only: [:index]

  def index
    @search = Product.search params[:q]
    @products = @search.result(distinct: true).paginate page: params[:page], per_page: Settings.products.page
  end

  private
    def load_category
      @categories = Category.all 
    end
end
