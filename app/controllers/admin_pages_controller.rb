class AdminPagesController < ApplicationController
  before_filter :signed_in_user, :admin_user

  def home
    
  end

  def message
  
    @microposts = current_user.microposts.build if signed_in? && current_user.admin?

  end

  def worker_list
  end

  private

  def signed_in_user
    redirect_to session_url, notice: "Please sign in." unless signed_in?
    end
  
  def admin_user
    redirect_to home_url, notice: "Unathorized access." unless current_user.admin?
    end

end
