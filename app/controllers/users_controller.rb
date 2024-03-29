class UsersController < ApplicationController
  def new
    @title = "Cadastre-se"
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:sucesso] = "Sua conta foi criada com sucesso!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  
  
  
end
