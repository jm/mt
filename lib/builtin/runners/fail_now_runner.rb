module MachineTests
  class FailNowRunner < Test::Unit::UI::Console::TestRunner
    def add_fault(fault)
      format_fault fault
    end
  end
end