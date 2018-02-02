# frozen_string_literal: true

module Admin
  class SessionsController < AdminController
    def new
    end

    def create
      render :new
    end

    def destroy
      render :new
    end
  end
end
