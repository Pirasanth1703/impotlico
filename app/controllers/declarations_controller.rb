class DeclarationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @declarations = Declaration.all
  end

  def show
  end

  def new
    @declaration = Declaration.new
  end

  def create
    @declaration = Declaration.new(declaration_params)
    user = current_user
    @declaration.user = user
    if @declaration.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @declaration = Declaration.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def set_declaration
    @declaration = Declaration.find(params[:id])
  end

  def declaration_params
    params.require(:declaration).permit(:user_id, :solo)
  end


end
