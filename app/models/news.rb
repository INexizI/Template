class News < ApplicationRecord
  mount_uploader :post_pic, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [ :slugged, :finders ]

  validates :title, presence: true
end
