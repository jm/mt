require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'configuration'
module MachineTests
  
  def config(config = Configuration.new)
    yield config if block_given?
    @@configuration = config
    set_runner
  end
  
  def set_runner
    # Clear the hash of runners
    Test::Unit::AutoRunner::RUNNERS.clear
    
    # Makes our runner the default value of the Hash, so
    # that any runner they request will actually be ours
    @@configuration.runner.instance_eval { include @@configuration.formatter  }
    Test::Unit::AutoRunner::RUNNERS.default = Hash.new(@@configuration.runner)
  end
end