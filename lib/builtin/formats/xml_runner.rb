module MachineTests
  class XmlRunner < Test::Unit::UI::Console::TestRunner
    def finished(elapsed_time)
      # open xml here
      
      @faults.each do |f|
        # xml representation of fault here
      end
    
      # close xml here
    end
  end
end