require 'spec_helper'


describe 'Alfresco Index Recovery Mode Nagios Check' do
  context 'Config' do
    
    it 'should have a config file' do
      expect { AirmNagiosCheck::Config.new().should }.to raise_error(ArgumentError)
    end

    it 'should have a valid config file' do
      expect { AirmNagiosCheck::Config.new(:filename=>"foo.properties") }.to raise_error(ArgumentError)
    end

    it 'should have a index.recovery.mode property' do
      AirmNagiosCheck::Config.new(:filename=>File.join(File.dirname(__FILE__), %w{fixtures alfresco-global.properties.NONE}))["index.recovery.mode"].should_not be_nil
    end
    
    it 'should have a index.recovery.mode property with NONE value' do
      AirmNagiosCheck::Config.new(:filename=>File.join(File.dirname(__FILE__), %w{fixtures alfresco-global.properties.NONE}))["index.recovery.mode"].should == "NONE"
    end

    it 'should have a index.recovery.mode property with VAILDATE value' do
      AirmNagiosCheck::Config.new(:filename=>File.join(File.dirname(__FILE__), %w{fixtures alfresco-global.properties.VALIDATE}))["index.recovery.mode"].should == "VALIDATE"
    end

    it 'should have a index.recovery.mode property with AUTO value' do
      AirmNagiosCheck::Config.new(:filename=>File.join(File.dirname(__FILE__), %w{fixtures alfresco-global.properties.AUTO}))["index.recovery.mode"].should == "AUTO"
    end

    it 'should have a index.recovery.mode property with FULL value' do
      AirmNagiosCheck::Config.new(:filename=>File.join(File.dirname(__FILE__), %w{fixtures alfresco-global.properties.FULL}))["index.recovery.mode"].should == "FULL"
    end
  end
end