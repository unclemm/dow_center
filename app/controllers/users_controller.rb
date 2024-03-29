class UsersController < ApplicationController

  before_filter :signed_in_user, only: [:edit, :update]
  
  def new
  end

  private

  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
  
  def admin_user
    redirect_to home_url, notice:"Unauthorized access." unless user.admin?
    end
end
