require 'builtin/formats/yaml_formatter'

module MachineTests
  class YamlRunner < Test::Unit::UI::Console::TestRunner
    def finished(elapsed_time)
      puts "\n"
      YamlFormatter.format_faults(@faults)
    end
  end
end