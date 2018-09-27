require 'status_checker'

class Service < ApplicationRecord
  has_many :pings
  validates :url, presence: true, length: { minimum: 4 }
  validates :text_on_page, presence: true
  validates :number_of_occurrences, numericality: { greater_than_or_equal_to: 1 }
  after_create :update_status

  def update_status
    is_up = StatusChecker.excute(url, text_on_page, number_of_occurrences, load_waiting_sec)
    add_ping(is_up)
  end

  def currently_up?
    pings.last&.is_up
  end

  private

  def add_ping(is_up)
    Ping.create!(service: self, is_up: is_up)
  end
end
