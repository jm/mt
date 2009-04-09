require 'builtin/runners'
require 'builtin/formats'

module MachineTests
  class Configuration
    TEST_OUTPUT_FORMATS = {
                            :yaml => MachineTests::YamlFormatter
                          }
    TEST_RUNNERS = {
                     :base => MachineTests::BaseRunner,
                     :fail_now => MachineTests::FailNowRunner
                   }

    attr_writer :runner
    attr_writer :formatter

    def runner
      TEST_RUNNERS[@runner || :base]
    end
    
    def formatter
      TEST_OUTPUT_FORMATS[@formatter || :yaml]
    end
  end
end