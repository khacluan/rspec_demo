ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'database_cleaner'
require 'rspec/autorun'
require 'rspec/rails'
require 'shoulda/matchers'
Dir.glob("spec/steps/*_steps.rb") { |f| load f, true }

# require 'capybara/dsl'
# require 'capybara/rspec'
# require 'capybara/poltergeist'
# require 'turnip'
# require 'turnip/capybara'

# E2E

# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app,
#                                     phantomjs: 'phantomjs',
#                                     :js_errors => false,
#                                     :debug => false,
#                                     :phantomjs_options => ['--load-images=no', '--disk-cache=true'],
#                                     :timeout => 360
#                                    )
# end

# Capybara.run_server = false
# Capybara.default_driver = :poltergeist
# Capybara.javascript_driver = :poltergeist
# Capybara.ignore_hidden_elements = false
# Capybara.default_driver = :webkit

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

# Rspec

# This file is copied to spec/ when you run 'rails generate rspec:install'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  # config.include CommonMethods
  # config.include CommonValidates
end
