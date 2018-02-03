# frozen_string_literal: true

module Admin
  # Handles sign in actions for admins/editors/authors/contributors
  class SessionsController < AdminController
    def new
    end

    def create
      user = User.find_by(email: params[:email])

      if user&.authenticate(params[:password])
        sign_in(user)
        redirect_to admin_root_path
      else
        render :new
      end
    end

    def destroy
      render :new
    end
  end
end
