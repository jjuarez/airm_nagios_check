# Alfresco Index Recovery Mode Nagios basic check

This gem is a little approach to check the fu-- configuration for the index recovery mode in Alfresco instances. Check this before you die trying to star a server in FULL mode dude.

## Installation

Add this line to your application's Gemfile:

    gem 'airm_nagios_check'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install airm_nagios_check

## Usage

1. Install the gem

    $ gem install airm_nagios_check
    
2. Configure a check in your nrpe local i.e.: 

    $ check[index_recovery_mode]=${RUBY_HOME}/bin/airm_nagios_check --file /opt/your-alfresco-install/conf/alfresco.properties

3. Configure a command in your nagios instance...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

