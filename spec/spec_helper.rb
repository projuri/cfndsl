require 'aruba/rspec'

if ENV['CFNDSL_COV']
  require 'simplecov'

  SimpleCov.start do
    add_group 'Code', 'lib'
    add_group 'Test', 'spec'
  end
end

require 'cfndsl/globals'
CfnDsl.specification_file File.expand_path('../lib/cfndsl/aws/resource_specification.json', __dir__)
# use local fixture for tests
require 'cfndsl'
require 'cfnlego'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }
