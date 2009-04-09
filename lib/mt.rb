require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'builtin/formats'
module MachineTests
  TEST_OUTPUT_FORMATS = {
                          :xml => MachineTests::XmlRunner,
                          # :html => MachineTests::HtmlRunner,
                          # :json => MachineTests::JsonRunner,
                          :yaml => MachineTests::YamlRunner
                        }
  
  def output(format)
    set_runner_to(TEST_OUTPUT_FORMATS[format])
  end
  
  def set_runner_to(klass)
    # Clear the hash of runners
    Test::Unit::AutoRunner::RUNNERS.clear
    
    # Makes our runner the default value of the Hash, so
    # that any runner they request will actually be ours
    Test::Unit::AutoRunner::RUNNERS.default = Hash.new(klass)
  end
end