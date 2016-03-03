class Admin::CategoriesController < ApplicationController
  before_action :load_category, only: [:show, :edit, :update, :destroy]
  def index
    @categories = Category.paginate page: params[:page], per_page: Settings.products.page
    @category = Category.new
    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t "user.category.create_sucess"
      redirect_to admin_categories_path
    else
      flash[:error] = t "user.category.create_fail"
      render :new
    end
  end
  
  private
    def category_params
      params.require(:category).permit :name, :content
    end

    def load_category
    @category = Category.find_by id: params[:id]
    end
end
