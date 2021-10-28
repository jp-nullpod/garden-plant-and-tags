class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags
end
