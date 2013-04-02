# -*- encoding: utf-8 -*-
begin
  require 'inifile'
rescue LoadError => le
  require 'rubygems'
  require 'inifile'
end

module AirmNagiosCheck

  class Config
  
    def initialize(options={ })
  
      @values = IniFile.new
    
      raise ArgumentError.new("You must specified a Alfresco config file name") unless options[:filename] 
      raise ArgumentError.new("The file: #{options[:filename]} don´t exists") unless File.exist?(options[:filename])

      @values.read(:filename=>options[:filename], :encoding=>options[:encoding])        

      self
    end
  
    def [](key)
    
      return @values["global"][key]
    end
  
    def inspect
      @values.inspect
    end
  
    def to_se
      "#{inspect}"
    end    
  end
end