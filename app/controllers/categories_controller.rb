class CategoriesController < ApplicationController
  def index
    @categories = Categorie.all
    render :index
  end

  def show
    @categorie= Categorie.find(params[:id])
    render :show
  end

  def new
   @categorie = Categorie.new
   render :new
 end

 def create
    @categorie = Categorie.new(categorie_params)
    if @categorie.save
      redirect_to  categories_path
    else
      render :new
    end
  end

  def edit
      @categorie = Categorie.find(params[:id])
      render :edit
    end

 def update
   @categorie= List.find(params[:id])
   if @categorie.update(categorie_params)
     redirect_to categories_path
   else
     render :edit
   end
 end

private
  def categorie_params
    params.require(:categorie).permit(:title)
  end

end
