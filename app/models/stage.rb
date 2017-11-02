class Stage < ApplicationRecord
  belongs_to :scenario
  has_many :scenes, dependent: :destroy
end
