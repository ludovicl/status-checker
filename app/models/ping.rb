class Ping < ApplicationRecord
  belongs_to :service
  before_create :add_pinged_at

  def add_pinged_at
    self.pinged_at = DateTime.now
  end
end
