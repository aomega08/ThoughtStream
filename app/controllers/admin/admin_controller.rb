# frozen_string_literal: true

module Admin
  # Root controller for Dashboard related actions
  class AdminController < ApplicationController
    before_action :ensure_admin

    protected

    def sign_in(user)
      cookies.permanent.signed[:user_id] = user.id
    end

    def sign_out
      cookies.delete(:user_id)
      reset_session
      @current_user = nil
    end

    private

    def ensure_admin
      redirect_to admin_signin_path unless current_user&.can_use_dashboard?
    end
  end
end
