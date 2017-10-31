class Scenario < ApplicationRecord
  has_many :stages, dependent: :destroy
end
