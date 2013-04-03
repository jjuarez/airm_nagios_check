require 'spec_helper'


describe 'Alfresco Index Recovery Mode Nagios Check' do
  context 'Response' do
    
    it 'should create a valid Response with exit_code' do
      AirmNagiosCheck::Response.new(0, AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100")).exit_code == 0
    end

    it 'should create a valid Response with performance_data' do
      AirmNagiosCheck::Response.new(0, AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100")).performance_data == "\'LABEL\'=100"
    end
  end
end