require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'mt'
include MachineTests

# We want XML output (for now)

MachineTests::config do |config|
  config.formatter = :yaml
  config.runner = :fail_now
end

class Test::Unit::TestCase
end
