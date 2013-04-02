# -*- encoding: utf-8 -*-
begin
  require 'choice'
rescue LoadError
  require 'rubygems'
  require 'choice'
end


Choice.options do
  
  header ''
  header ' opciones:'

  option :file, :required=>true do
    short '-f'
    long  '--file'
    desc  'Alfresco global configuration file'
  end 

  separator ''
  separator ' help:'
  
  option :help do
    short '-h'
    long  '--help'
    desc  'This help screen'
  end

  separator ''
end