require 'spec_helper'


describe 'Alfresco Index Recovery Mode Nagios Check' do
  context 'SimplePerformanceData' do
    
    it 'should return a PerformanceData String with a valid UOM (Seconds)' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100", "s") 

      pd.to_s.should      == "|\'LABEL\'=100s"
      pd.performance_data == "|\'LABEL\'=100s" 
    end

    it 'should return a PerformanceData String with a valid UOM (%)' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100", "%")

      pd.to_s.should      == "|\'LABEL\'=100%"
      pd.performance_data == "|\'LABEL\'=100%" 
    end

    it 'should return a PerformanceData String with a valid UOM (Bytes)' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100", "B")

      pd.to_s.should      == "|\'LABEL\'=100B"
      pd.performance_data == "|\'LABEL\'=100B" 
    end

    it 'should return a PerformanceData String with UOM (Counter)' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100", "c")

      pd.to_s.should      == "|\'LABEL\'=100c"
      pd.performance_data == "|\'LABEL\'=100c" 
    end

    it 'should return a PerformanceData String without UOM' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100")

      pd.to_s.should      == "|\'LABEL\'=100"
      pd.performance_data == "|\'LABEL\'=100" 
    end

    it 'should return a PerformanceData String without UOM (invalid)' do
      
      pd = AirmNagiosCheck::SimplePerformanceData.new("LABEL", "100", "x")

      pd.to_s.should      == "|\'LABEL\'=100"
      pd.performance_data == "|\'LABEL\'=100" 
    end
  end
end