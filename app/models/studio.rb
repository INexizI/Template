class Studio < ApplicationRecord
  mount_uploader :logotype, ImageUploader

  extend FriendlyId
  friendly_id :name, use: [ :slugged, :finders ]

  validates :name, presence: true

  has_many :comments, as: :commentable, dependent: :destroy
end
