# encoding: utf-8

module AirmNagiosCheck
  
  class Response
    
    attr_reader :exit_code, :performance_data
    
    def initialize(exit_code, performance_data)
      
      @exit_code        = exit_code
      @performance_data = performance_data
      
      self
    end
  end
end