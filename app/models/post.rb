class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :club

  has_many_attached :images

  validates :images, presence: true
  validates :date, presence: true
  validates :title, presence: true
  validate :description
  validates :club_id, numericality: { other_than: 1, message: "can't be blank" }
end
