class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user

  #空白だと登録できない
  validates   :comment,         presence: true
  validates   :prototype,      presence: true
  validates   :user,            presence: true
end
