require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'configuration'
module MachineTests
  
  def config(config = Configuration.new)
    yield config if block_given?
    set_runner(config)
  end
  
  def set_runner(config)
    # Clear the hash of runners
    Test::Unit::AutoRunner::RUNNERS.clear
    
    # Makes our runner the default value of the Hash, so
    # that any runner they request will actually be ours
    config.runner.instance_eval { include config.formatter  }
    Test::Unit::AutoRunner::RUNNERS.default = Hash.new(config.runner)
  end
end