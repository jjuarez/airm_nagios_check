# encoding: utf-8

require 'airm_nagios_check/config'
require 'airm_nagios_check/exit_codes'
require 'airm_nagios_check/response'
require 'airm_nagios_check/simple_performance_data'
require 'airm_nagios_check/options_parser'


module AirmNagiosCheck

  class Checker
    
    PROPERTY_KEY            = "index.recovery.mode"
    DEFAULT_PLUGIN_BEHAVIOR = {
      
      "NONE"     =>ExitCodes::ERROR,
      "VALIDATE" =>ExitCodes::WARNING,
      "AUTO"     =>ExitCodes::OK,
      "FULL"     =>ExitCodes::WARNING      
    }

    def initialize(options={ })
      
      options      = { :pluginbehavior=>DEFAULT_PLUGIN_BEHAVIOR }.merge(options)
        
      @irm_value   = Config.new(:filename=>options[:filename])[PROPERTY_KEY]      
      @error_codes = Hash.new(ExitCodes::UNKNOWN)
      
      @error_codes.merge!(options[:pluginbehavior])
      
      self
    end
    
    def do_check(options={ })
      return Response.new(@error_codes[@irm_value], SimplePerformanceData.new('Index Recovery Mode', @irm_value))
    end
  end
end
