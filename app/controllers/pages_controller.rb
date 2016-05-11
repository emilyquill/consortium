class PagesController < ApplicationController
  def home
        redirect_to login_path unless @current_user.present?
  end
end
