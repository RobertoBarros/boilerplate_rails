class Admin::UsersController < ApplicationController
  before_action -> { @sidebar = "users" }
  before_action :set_user, only: %i[edit update destroy]
  include Pagy::Backend

  def index
    @users = policy_scope(User).order("unaccent(lower(name)) ASC")
    if params[:search].present?
      @users = @users.where("unaccent(lower(name)) LIKE ?", "%#{params[:search].downcase}%")
    end
    @pagy, @users = pagy(@users)
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      flash[:notice] = "Usuário Cadastrado"
      render turbo_stream: turbo_stream.action(:redirect, admin_users_path)
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
      flash[:notice] = "Usuário Atualizado"
      render turbo_stream: turbo_stream.action(:redirect, admin_users_path)
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
