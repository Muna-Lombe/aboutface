require_relative "boot"

require "rails/all"
require "csv"
require_relative '../app/middlewares/handle_bad_encoding_middleware.rb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Aboutface
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # you add this for the rack-utf8_sanitizer,
    # as described in the gem's readme:
    config.middleware.insert 0, Rack::UTF8Sanitizer
    # add this:
    config.middleware.insert_before Rack::Runtime, HandleBadEncodingMiddleware

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
