class Game < ApplicationRecord
  belongs_to :studio
  belongs_to :publisher

  mount_uploader :poster, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [ :slugged, :finders ]

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

  validates :title, presence: true

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :scores, as: :scorable, dependent: :destroy
  # has_many :user_score, dependent: :destroy

  # def average(rating)
  #   calculate(:average, rating)
  # end
end
