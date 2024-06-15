def UsersController < ApplicationController

    def create
        created_user = User.create(user_params)
        if created_user.valid?
            render :json => {
                userInfo: created_user.format_properties_for_frontend
            }
        else

        end
    end

    def destroy
    end

    def show
    end

    private
        def user_params
            params.require(:new_user).permit(:f_name, :l_name, :username, :email, :phone_number, :password, :password_confirmation)
        end

end