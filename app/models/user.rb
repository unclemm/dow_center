class User < ActiveRecord::Base
  attr_accessible :email, :name, :position
end
