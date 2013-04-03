require 'spec_helper'


describe 'Alfresco Index Recovery Mode Nagios Check' do
  context 'Checker with default behavior' do
    
    it 'should construct a valid Response for NONE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.NONE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=NONE"
      response.exit_code        == AirmNagiosCheck::Checker::DEFAULT_PLUGIN_BEHAVIOR["NONE"]
    end

    it 'should construct a valid Response for VALIDATE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.VALIDATE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=VALIDATE"
      response.exit_code        == AirmNagiosCheck::Checker::DEFAULT_PLUGIN_BEHAVIOR["VALIDATE"]
    end

    it 'should construct a valid Response for AUTO state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.AUTO")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=AUTO"
      response.exit_code        == AirmNagiosCheck::Checker::DEFAULT_PLUGIN_BEHAVIOR["AUTO"]
    end

    it 'should construct a valid Response for FULL state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.FULL")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=FULL"
      response.exit_code        == AirmNagiosCheck::Checker::DEFAULT_PLUGIN_BEHAVIOR["FULL"]
    end
  end
  
  context 'Checker with custom behavior' do
  
    custom_behavior = {
      "NONE"     =>AirmNagiosCheck::ExitCodes::ERROR,
      "VALIDATE" =>AirmNagiosCheck::ExitCodes::WARNING,
      "AUTO"     =>AirmNagiosCheck::ExitCodes::UNKNOWN,
      "FULL"     =>AirmNagiosCheck::ExitCodes::OK,      
    }
    
    it 'should construct a valid Response for NONE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.NONE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name, :pluginbehavior=>custom_behavior).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=NONE"
      response.exit_code        == custom_behavior["NONE"]
    end

    it 'should construct a valid Response for VALIDATE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.VALIDATE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name, :pluginbehavior=>custom_behavior).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=VALIDATE"
      response.exit_code        == custom_behavior["VALIDATE"]
    end

    it 'should construct a valid Response for AUTO state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.AUTO")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name, :pluginbehavior=>custom_behavior).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=AUTO"
      response.exit_code        == custom_behavior["AUTO"]
    end

    it 'should construct a valid Response for FULL state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.FULL")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name, :pluginbehavior=>custom_behavior).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=FULL"
      response.exit_code        == custom_behavior["FULL"]
    end
  end
end