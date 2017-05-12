class PhysicalPerson < ApplicationRecord
  belongs_to :person, inverse_of: :physical_person
  has_many :gyms, inverse_of: :physical_person, autosave: true, dependent: :destroy
end
