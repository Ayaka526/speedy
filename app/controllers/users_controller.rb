class UsersController < ApplicationController
	def mypage
		@user = User.find(params[:user_id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	    if    @user.update(user_params)
	          flash[:notice] = "User was successfully updated."
	          redirect_to user_mypage_path(@user.id)
	    else  render 'edit'
	    end
	end


	def index
	@users = User.search(params[:search])
	end

	def admin_update
    user =User.find(params[:user_id])
    if user.update(user_params)
      flash[:success] = "successfully updated."
      redirect_to  user_mypage_path(user.id)
    end
  end

  	def destroy
		user =User.find(params[:id])
		user.destroy
		redirect_to  users_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :reply)
	end
end
