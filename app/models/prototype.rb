class Prototype < ApplicationRecord
  
  has_one_attached :image

  has_many :comment ,dependent: :destroy
  belongs_to :user

  #空白だと登録できない
  validates   :title	,         presence: true
  validates   :catch_copy,      presence: true
  validates   :concept,         presence: true
  validates   :image,           presence: true
  
end
