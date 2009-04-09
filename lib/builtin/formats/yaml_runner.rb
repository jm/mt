module MachineTests
  class YamlRunner < Test::Unit::UI::Console::TestRunner
    def finished(elapsed_time)
      puts "\n"
      @faults.each do |fault|
        puts '---'
        puts "test_name: #{fault.test_name}"
        puts "message:   #{fault.message}"
        puts "location:  #{fault.location}"
      end
    end
  end
end