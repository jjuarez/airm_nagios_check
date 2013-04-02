# encoding: utf-8

module AirmNagiosCheck

  class SimplePerformanceData
    
    VALID_UOM = ['s', '%', 'B', 'c']
    
    def self.uom_valid?(uom)
      
      VALID_UOM.include?(uom)
    end
    
    def initialize(label, value, uom='')
      
      @label = label
      @value = value
      @uom   = nil
      
      unless uom.empty?        
        @uom = uom if SimplePerformanceData.uom_valid?(uom)
      end
      
      self
    end
    
    def to_s()
      "|'#{@label}'=#{@value}#{@uom if @uom}"
    end
    
    def performance_data()
      to_s() 
    end
  end
end
