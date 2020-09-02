class UsersController < ApplicationController
    def index
        # Only admin can see all users
        @user = current_user
        if @user.role.admin?
            @users = User.all
        else
            #redirect to show
        end

    end

    def show
        @user = User.find(params[:id])
    end

    def new
    end

    def edit
        @user = User.find(params[:id])
    end

    def create
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to user_path(@user), notice: "User updated successfully"
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])

        if @user.destroy
            redirect_to users_path, notice: "User deleted successfully"
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :street_address, :city, :province, :postal_code, :phone_number)
        end
end
