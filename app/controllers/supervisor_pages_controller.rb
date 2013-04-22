require 'will_paginate/array'

class SupervisorPagesController < ApplicationController
  layout 'supervisor'
  def home

    @microposts = Micropost.find_all_by_supervisor(true).paginate(page: params[:page])

  end

  def rules_and_protocols
  end
end
