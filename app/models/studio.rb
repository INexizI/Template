class Studio < ApplicationRecord
  mount_uploader :logotype, ImageUploader

  extend FriendlyId
  friendly_id :name, use: [ :slugged, :finders ]

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

  validates :name, presence: true

  has_many :comments, dependent: :destroy
end
