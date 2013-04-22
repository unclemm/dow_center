class Micropost < ActiveRecord::Base
  attr_accessible :content, :regular, :supervisor, :lifeguard, :allposition
  belongs_to :user

  validates :content, presence: true
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
