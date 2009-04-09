require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'mt'
include MachineTests

# We want XML output (for now)
output :yaml
runner :fail_now

class Test::Unit::TestCase
end
