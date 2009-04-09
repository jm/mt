module MachineTests
  module YamlFormatter
    def format_fault(fault)
      puts '---'
      puts "test_name: #{fault.test_name}"
      puts "message:   #{fault.message}"
      puts "location:  #{fault.location}"
    end
    
    def format_faults(faults)
      faults.each do |fault|
        format_fault fault
      end
    end
  end
end