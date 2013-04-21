require 'will_paginate/array'

class SupervisorPagesController < ApplicationController
  layout 'supervisor'
  def home

    @microposts = Micropost.all.paginate(page: params[:page])

  end

  def rules_and_protocols
  end
end
