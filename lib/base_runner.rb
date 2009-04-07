module MachineTests
  class BaseRunner < Test::Unit::UI::Console::TestRunner
    def started(result)
      @faults = []
    end
    
    def test_started(name)
      
    end
    
    def test_finished(name)
      puts "."
    end
    
    def add_fault(fault)
      puts "F"
      @faults << fault
    end

    def finished(elapsed_time)
      @faults.each do |f|
        puts fault.inspect
      end
    end
  end
end