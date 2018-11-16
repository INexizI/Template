class Game < ApplicationRecord
  belongs_to :user
  mount_uploader :poster, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [ :slugged, :finders ]

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

  validates :title, presence: true

  has_many :comments, dependent: :destroy
end
