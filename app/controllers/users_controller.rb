class UsersController < ApplicationController
before_action :user_logged_in, only: [:edit, :update., :show]
before_action :check_user_correct, only: [:edit, :update, :show]

  def new

    if !@user

    @user=User.new

  end

end

  def show

  @user= User.find(params[:id])

  end

  def create

   @user= User.new(user_req)

    if @user.save

      log_in @user

      flash[:success]="Registration Successful"

redirect_to @user

   else

    render 'new'

    end

  end



def edit

  @user =User.find(params[:id])



end



def update

  @user=User.find(params[:id])

  if @user.update(user_req)

  flash[:success]="Profile Updated"

  redirect_to @user

  else

  render 'edit'

  end

end
def user_logged_in

  unless logged_in?
    save_user_location
    flash[:danger]="Login first"
    redirect_to login_path
  end 
end
def check_correct_user
@user = User.find(params[:id])
unless @user == current_user
  flash[:danger]="Wrong user"
  redirect_to root_path

end



  private

  def user_req

    params.require(:user).permit(:name,:email,:password,:password_confirmation)

  end

end