class Game < ApplicationRecord
  mount_uploader :poster, ImageUploader

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

  validates :title, presence: true
end
