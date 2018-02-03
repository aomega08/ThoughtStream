# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find(cookies.signed[:user_id]) if cookies[:user_id]
  end
end
