require 'spec_helper'


describe 'Alfresco Index Recovery Mode Nagios Check' do
  context 'Global' do
    
    it 'should have a version number' do
      AirmNagiosCheck::VERSION.should_not be_nil
    end

    it 'should have a correct version number' do
      AirmNagiosCheck::VERSION.should match(/\d\.\d\.\d/)
    end
  end
end