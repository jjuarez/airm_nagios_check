require 'spec_helper'


describe 'AirmNagiosCheck' do
  context 'ExitCodes' do
    
    it 'should have an ExitCode Ok with value 0' do
      AirmNagiosCheck::ExitCodes::OK.should == 0
    end

    it 'should have an ExitCode Warning with value 1' do
      AirmNagiosCheck::ExitCodes::WARNING.should == 1
    end

    it 'should have an ExitCode Error with value 2' do
      AirmNagiosCheck::ExitCodes::ERROR.should == 2
    end

    it 'should have an ExitCode Unknown with value 3' do
      AirmNagiosCheck::ExitCodes::UNKNOWN.should == 3
    end
  end
end