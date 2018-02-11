# frozen_string_literal: true

# Global application root controller
class ApplicationController < ActionController::Base
  helper_method :current_user

  before_action :set_default_meta_tags

  def current_user
    @current_user ||= User.find(cookies.signed[:user_id]) if cookies[:user_id]
  end

  private

  def set_default_meta_tags
    set_meta_tags(
      viewport: 'width=device-width,minimum-scale=1,initial-scale=1',
      site: Settings.site_name,
      reverse: true,
      separator: '|'
    )
  end
end
