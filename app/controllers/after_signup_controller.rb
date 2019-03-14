class AfterSignupController < ApplicationController
    before_action :authenticate_user!

    include Wicked::Wizard
    steps :confirm_password, :confirm_profile, :find_friends

    def show
        @user = current_user
        # case steps
        # when :find_friends
        #     @friends = "wiggle waggle"
        # end
        render_wizard
    end

    def update
        @user = current_user
        case step
        when :confirm_password
          @user.update_attributes(user_params)
        end
        sign_in(@user, bypass: true) # needed for devise
        render_wizard @user
    end

    private

    def user_params
        params.require(:user).permit!
    end



end
