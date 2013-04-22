require 'will_paginate/array'

class LifeguardPagesController < ApplicationController
  layout 'lifeguard'
  def home

    @microposts = Micropost.find_all_by_lifeguard(true).paginate(page: params[:page])

  end

  def rules_and_protocols
  end
end
