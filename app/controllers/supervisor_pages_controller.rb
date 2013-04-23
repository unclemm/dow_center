require 'will_paginate/array'

class SupervisorPagesController < ApplicationController
  layout 'supervisor'
  before_filter :signed_in_user, :authorized_user
  def home

    @microposts = Micropost.find_all_by_supervisor(true).paginate(page: params[:page])

  end

  def rules_and_protocols
  end

  private
  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

  def authorized_user
    redirect_to home_url, notice: "Unauthorized access." unless current_user.admin? or current_user.supervisor === true
    end
  
end
