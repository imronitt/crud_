class UsersController < ApplicationController

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



  private

  def user_req

    params.require(:user).permit(:name,:email,:password,:password_confirmation)

  end

end