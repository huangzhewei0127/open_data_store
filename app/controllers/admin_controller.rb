class AdminController < ApplicationController
  layout 'admin'
  before_action :check_is_admin
  def check_is_admin
    unless current_user.is_admin?
      redirect_to "/"
    end
  end
end