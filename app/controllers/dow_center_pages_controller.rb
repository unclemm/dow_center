class DowCenterPagesController < ApplicationController

  before_filter :signed_in_user

  def regular
    
    redirect_to regular_url
    
  end

  def supervisor

    redirect_to supervisor_url

  end

  def lifeguard

    redirect_to lifeguard_url

  end


  def admin
 
    redirect_to admin_url

  end


  private
  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

end
