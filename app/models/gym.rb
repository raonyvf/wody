class Gym < ApplicationRecord
  belongs_to :physical_person, inverse_of: :gyms
  accepts_nested_attributes_for :physical_person, allow_destroy: :true
  validates :phisical_person, presence: true
end
