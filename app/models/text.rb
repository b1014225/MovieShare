class Text < ApplicationRecord
  belongs_to :user

  validates :title,presence:true
  validates :content,presence:true,length:{maximum: 140}
  validates :user_id,presence:true


end
