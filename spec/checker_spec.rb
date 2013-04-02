require 'spec_helper'


describe 'AirmNagiosCheck' do
  context 'Checker' do
    
    it 'should construct a valid Response for NONE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.NONE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=NONE"
      response.exit_code        == AirmNagiosCheck::Checker::PLUGIN_BEHAVIOR["NONE"]
    end

    it 'should construct a valid Response for VALIDATE state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.VALIDATE")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=VALIDATE"
      response.exit_code        == AirmNagiosCheck::Checker::PLUGIN_BEHAVIOR["VALIDATE"]
    end

    it 'should construct a valid Response for AUTO state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.AUTO")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=AUTO"
      response.exit_code        == AirmNagiosCheck::Checker::PLUGIN_BEHAVIOR["AUTO"]
    end

    it 'should construct a valid Response for FULL state of Index recovery mode' do
      
      file_name = File.join(File.dirname(__FILE__), "fixtures", "alfresco-global.properties.FULL")
      response  = AirmNagiosCheck::Checker.new(:filename=>file_name).do_check()
      
      response.performance_data == "|\'Index Recovery Mode\'=FULL"
      response.exit_code        == AirmNagiosCheck::Checker::PLUGIN_BEHAVIOR["FULL"]
    end
  end
end