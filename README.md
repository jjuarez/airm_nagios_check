# Alfresco Index Recovery Mode Nagios basic check

This gem is a little approach, and very opinionated to check the fu-%ing configuration for the index recovery mode in Alfresco instances. Check this before you die trying to start a server configured as FULL index recovery mode.

## Installation

Add this line to your application's Gemfile:

    gem 'airm_nagios_check'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install airm_nagios_check

## Usage

Install the gem...
Configure a check in your nrpe local ie: 

    # NRPE: Alfresco index recovery mode
    check[index_recovery_mode]=${RUBY_HOME}/bin/airm_nagios_check --file /opt/your-alfresco-install/conf/alfresco.properties

Configure a command in your nagios instance ie:
    
    # Nagios: Alfresco index recovery mode service/command
    define service {

      hostgroup_name       alfresco-servers
      service_description  Index Recovery Mode
      check_command        check_nrpe!check_index_recovery_mode
      use                  generic-service
    }    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

