module MachineTests
  class FailNowRunner < Test::Unit::UI::Console::TestRunner
    def add_fault(fault)
      # Show the fault NOW rather than at the end
    end
  end
end