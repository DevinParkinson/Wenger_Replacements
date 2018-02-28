class ReplacementsController < ApplicationController
  def index
    @replacements = Replacement.all
  end

  def show
    @replacement = Replacement.find(params[:id])
  end

  def new
    @replacement = Replacement.new
  end

  def create
    @replacement = Replacement.new(replacement_params)

    if @replacement.save
      redirect_to replacements_path
    else
      render :new
    end
  end

  def edit
    @replacement = Replacement.find(params[:id])
  end

  def update
    @replacement = Replacement.find(params[:id])

    if @replacement.update(replacement_params)
      redirect_to replacements_path
    else
      render :edit
    end
  end

  def destroy
    Replacement.find(params[:id]).destroy
    redirect_to replacements_path
  end
end

private

  def replacement_params
    params.require(:replacement).permit(:name, :age, :experience, :rating, :likelihood)
  end
