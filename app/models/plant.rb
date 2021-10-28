class Plant < ApplicationRecord
  belongs_to :garden

  has_many :plant_tags, dependent: :destroy
  has_many :tags, {:through=> :plant_tags, :source=>"tag"}

  validates :name, :image_url, presence: true
end
