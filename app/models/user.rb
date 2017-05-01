class User < ApplicationRecord
  has_many :texts

  validates :name,presence:true
  validates :email,presence:true,uniqueness:true
  #validates :user_id,presence:true


end
