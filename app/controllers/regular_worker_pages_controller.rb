require 'will_paginate/array'

class RegularWorkerPagesController < ApplicationController
  layout 'regularworker'
  def home
    
    @microposts = Micropost.all.paginate(page: params[:page])
    
  end

  def rules_and_protocols
  end
end
