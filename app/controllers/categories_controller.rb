class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
    render :show, layout: false
    respond_to do |format|
      format.html { redirect_to votes_url }
      format.js { head :ok }
    end
  end

  def edit
    @category = Category.find(params[:id])

  end

  def update
    p params
    @category = Category.find(params[:id])
    if @category.update_attribute :category_name, params[:category][:category_name]
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end

  def new
    @categories = Category.new
    redirect_to root_path
  end


  def create
    @categories = Category.create( :category_name =>params[:category][:category_name])

    redirect_to root_path
  end

end
