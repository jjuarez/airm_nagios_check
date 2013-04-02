lib = File.expand_path(File.join(File.dirname(__FILE__), %w{.. .. lib}))
$:.unshift(lib) unless $:.include?(lib)

require 'airm_nagios_check'