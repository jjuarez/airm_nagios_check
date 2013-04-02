# encoding: utf-8

require 'airm_nagios_check/options_parser'
require 'airm_nagios_check/config'
require 'airm_nagios_check/exit_codes'
require 'airm_nagios_check/simple_performance_data'


module AirmNagiosCheck

  class Base
  
    def initialize(options={ })
        
      @irm_value   = Config.new(:filename=>options[:filename])["index.recovery.mode"]
      @error_codes = Hash.new(ExitCodes::UNKNOWN)
      
      @error_codes["NONE"]     = ExitCodes::ERROR
      @error_codes["VALIDATE"] = ExitCodes::WARNING
      @error_codes["AUTO"]     = ExitCodes::OK
      @error_codes["FULL"]     = ExitCodes::WARNING
      
      self
    end
    
    def check(options={ })
      
      exit_code        = @error_codes[@irm_value]
      performance_data = SimplePerformanceData.new('Index Recovery Mode', @irm_value, 'a')
      
      puts performance_data
      Kernel.exit(exit_code)
    end
  end
end