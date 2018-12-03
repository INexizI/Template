class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :studio
  validates :body, presence: true, allow_blank: false
end
