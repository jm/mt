module MachineTests
  # A runner with really pretty output (sane test names, colors, etc.)
  class PrettyRunner < Test::Unit::UI::Console::TestRunner
    def test_started(name)
      
    end
    
    def test_finished(name)

    end
    
    def add_fault(fault)

    end

    def finished(elapsed_time)

    end
  end
end