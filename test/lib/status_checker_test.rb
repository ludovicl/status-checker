# frozen_string_literal: true

require 'test_helper'
require 'status_checker'

class StatusCheckerTest < ActionDispatch::IntegrationTest
  test "Facebook status page is up and function arguments are good" do
    assert(StatusChecker.excute('https://developers.facebook.com/status/',  'La plate-forme Facebook est opérationnelle', 1))
  end

  test "Facebook status page is up and function arguments are bad" do
    assert_not(StatusChecker.excute('https://developers.facebook.com/status/', 'La plate-forme Facebook est opérationnelle', 2))
  end

  test "Algolia status page is up and function arguments are good" do
    assert(StatusChecker.excute('https://status.algolia.com', 'All services are online', 1, 7))
  end

  test "Lithium status page is up and function arguments are good" do
    assert(StatusChecker.excute('https://status.lithium.com', 'Operational', 4, 0))
  end

  test "Rubygems status page is up and function arguments are good" do
    assert(StatusChecker.excute('https://status.rubygems.org', 'All Systems Operational', 1, 0))
  end

  test "Unvailable URL must return false" do
    assert_not(StatusChecker.excute('Unvailable URL', 'All Systems Operational', 1, 0))
  end
end