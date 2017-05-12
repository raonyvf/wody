class Person < ApplicationRecord
  has_many :addresses
  has_one :physical_person, inverse_of: :person, autosave: true, dependent: :destroy
  has_many :gyms, through: :physical_person
end
