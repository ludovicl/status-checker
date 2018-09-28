require 'clockwork'
require 'active_support/time' # Allow numeric durations (eg: 1.minutes)
require './config/boot'
require './config/environment'
require_relative '../app/jobs/service_fetcher_job.rb'
module Clockwork
  handler do |job|
    puts "Running #{job}"
  end
  every(5.minutes, ServiceFetcherJob.perform_later)
end