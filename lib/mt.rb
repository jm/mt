require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'builtin/runners'
require 'builtin/formats'
module MachineTests
  TEST_OUTPUT_FORMATS = {
                          :yaml => MachineTests::YamlFormatter
                        }
  TEST_RUNNERS = {
                   :base => MachineTests::BaseRunner,
                   :fail_now => MachineTests::FailNowRunner
                 }
  
  def runner(runner = :base)
    @runner_class ||= TEST_RUNNERS[runner]
    set_runner_to(@runner_class)
  end
  
  def output(formatter = :yaml)
    @formatter_module ||= TEST_OUTPUT_FORMATS[formatter]
  end
  
  def set_runner_to(klass)
    # Clear the hash of runners
    Test::Unit::AutoRunner::RUNNERS.clear
    
    # Makes our runner the default value of the Hash, so
    # that any runner they request will actually be ours
    output_module = output
    @runner_class.instance_eval { include output_module  }
    Test::Unit::AutoRunner::RUNNERS.default = Hash.new(@runner_class)
  end
end