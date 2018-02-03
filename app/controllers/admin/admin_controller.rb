# frozen_string_literal: true

module Admin
  class AdminController < ApplicationController
    protected

    def sign_in(user)
      cookies.permanent.signed[:user_id] = user.id
    end
  end
end
