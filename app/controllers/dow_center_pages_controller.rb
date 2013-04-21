class DowCenterPagesController < ApplicationController

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

end
