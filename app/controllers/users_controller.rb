def UsersController < ApplicationController

    def create
        created_user = User.create(user_params)
        if created_user.valid?
            render :json => {
                success: true,
                userInfo: created_user.format_properties_for_frontend
            }
        else
            render :json => {
                success: false,
                error: {
                    message: "There was an error creating a user account.",
                    errors: created_user.errors,
                }
            }
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