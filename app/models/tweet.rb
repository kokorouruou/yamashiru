class Tweet < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :theme
  belongs_to :prefecture
  belongs_to_active_hash :mountain_name
  belongs_to :climbing_time
  belongs_to :mountain_view
  belongs_to :stamina
  belongs_to :danger

  has_one_attached :image

  validates :title, :image, presence: true
  with_options numericality: { other_than: 1, message: "can't be blank"} do
  validates :theme_id
  validates :prefecture_id
  end
  belongs_to :category, optional: true 
end
