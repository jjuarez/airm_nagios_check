# -*- encoding: utf-8 -*-

module AirmNagiosCheck

  class SimplePerformanceData
    
    def initialize(label, value, oum)
      
      @label = label
      @value = value
      @oum   = oum
      
      self
    end
    
    def to_s()
      "|'#{@label}'=#{@value}#{@uom}"
    end
  end
end
