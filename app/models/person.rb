class Person < ApplicationRecord
  has_many :addresses
  has_one :physical_person
end
