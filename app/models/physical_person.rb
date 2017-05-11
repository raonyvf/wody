class PhysicalPerson < ApplicationRecord
  belongs_to :person
  has_many :gyms
end
