class CategoriesController < ApplicationController
  def index
    @categories = Categorie.all
    render :index
  end

  def show
    @categorie= Categorie.find(params[:id])
    render :show
  end
end
