class Admin::UsersController < ApplicationController
  before_action -> { @sidebar = "users" }
  before_action :set_user, only: %i[edit update destroy]
  include Pagy::Backend

  def index
    @pagy, @users = pagy(policy_scope(User).order(:name))
    authorize User
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to admin_users_path, notice: "Usuário Cadastrado"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    # Filtra os parâmetros para verificar se o password está presente
    if params[:user][:password].blank?
      params[:user].delete(:password)
    end

    if @user.update(user_params)
      redirect_to admin_users_path, notice: "Usuário Atualizado"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: "Usuário Excluído!"
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
