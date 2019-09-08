# Add simplecov
require "minitest"
require "minitest/autorun"
require "minitest/reporters"
require 'simplecov'

SimpleCov.start do 
  add_filter 'test/'
end

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative "../lib/time.rb"
require_relative "../lib/reservation.rb"
require_relative "../lib/service.rb"
