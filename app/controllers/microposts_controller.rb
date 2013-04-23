class MicropostsController < ApplicationController
  before_filter :signed_in_user, :admin_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Message created!"
      redirect_to admin_url
    else
      render 'admin_pages/home'
      end
  end

  def destroy
    @micropost.destroy
    redirect_to home_url
  end

  private 
  
  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

  def admin_user
    redirect_to home.url, notice: "Unauthorized access." unless current_user.admin?
    end

  def correct_user
    @micropost = current_user.microposts.find_by_id(params[:id])
    redirect_to home_url unless current_user.admin?
  end

  
end
