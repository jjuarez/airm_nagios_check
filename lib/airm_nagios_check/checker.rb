# encoding: utf-8

require 'airm_nagios_check/config'
require 'airm_nagios_check/exit_codes'
require 'airm_nagios_check/response'
require 'airm_nagios_check/simple_performance_data'


module AirmNagiosCheck

  class Checker
    
    PLUGIN_BEHAVIOR = {
      
      "NONE"     =>ExitCodes::ERROR,
      "VALIDATE" =>ExitCodes::WARNING,
      "AUTO"     =>ExitCodes::OK,
      "FULL"     =>ExitCodes::WARNING      
    }

    def initialize(options={ })
        
      @irm_value   = Config.new(:filename=>options[:filename])["index.recovery.mode"]
      
      @error_codes = Hash.new(ExitCodes::UNKNOWN)
      @error_codes.merge(PLUGIN_BEHAVIOR)
      
      self
    end
    
    def do_check(options={ })
      
      return Response.new(@error_codes[@irm_value], SimplePerformanceData.new('Index Recovery Mode', @irm_value))
    end
  end
end