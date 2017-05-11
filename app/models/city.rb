class City < ApplicationRecord
  belongs_to :state
  has_one :address
end