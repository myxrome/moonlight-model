class Scenario < ApplicationRecord
  has_many :stages, dependent: :destroy
  before_create :init_key

  def init_key
    begin
      self.key = SecureRandom.urlsafe_base64 8
    end while Scenario.exists?(key: self.key)
  end

end
