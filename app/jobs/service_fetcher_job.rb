class ServiceFetcherJob < ApplicationJob
  queue_as :default

  def perform
    Service.find_each do |service|
      PingServiceJob.perform_later(service)
    end
  end
end

