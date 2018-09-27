class PingServicesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Services.all.each do |service|
      service.update_status
    end

  end
end
