class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(users_show_path(@user.id))
    else
      render("users/new")

    end


  end

  def show
    @user = User.find_by(id: params[:id])

    
  end

  def index
  end

  private
    def user_params
      params.require(:user).permit(:name,
                                      :email,
                                      :password,
                                      :password_confirmation,
                                      )
    end
end
