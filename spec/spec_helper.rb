ENV['RORY_STAGE'] = 'test'
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'rory'
require 'rack'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

require_relative 'fixture_app/config/application'
Fixture::Application.root = File.join(File.dirname(__FILE__), 'fixture_app')

Fixture::Application.require_all_files

RSpec.configure do |config|

end
