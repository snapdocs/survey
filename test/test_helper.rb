require 'mocha/api'
require 'faker'

require 'active_record'
Dir["#{File.dirname(__FILE__)}/../app/**/*.rb"].each { |f| require f }
load File.dirname(__FILE__) + '/../lib/survey.rb'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

load File.dirname(__FILE__) + '/schema.rb'
require File.dirname(__FILE__) + '/models.rb'

# Load support files
# Add support to load paths so we can overwrite broken webrat setup
$:.unshift File.expand_path('../support', __FILE__)
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
