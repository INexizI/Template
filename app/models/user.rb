class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :username, use: [ :slugged, :finders ]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :image, file_size: { less_than: 1.megabytes }
  validates :username, presence: true, length: {minimum: 4}
  validates :realname, presence: true, length: {minimum: 4}
  validates :about, length: {maximum: 300}
  validates :password, length: {maximum: 6}

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :scores, as: :scorable, dependent: :destroy
end
