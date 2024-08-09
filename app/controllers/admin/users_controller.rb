class Admin::UsersController < ApplicationController
  def index
    @sidebar = "users"
    @users = User.all.order(:name)
  end

  def new
    @sidebar = "users"
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: "Usuário Cadastrado com Sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sidebar = "users"
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    # Filtra os parâmetros para verificar se o password está presente
    if params[:user][:password].blank?
      params[:user].delete(:password)
    end

    if @user.update(user_params)
      redirect_to admin_users_path, notice: "Usuário Atualizado com Sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
