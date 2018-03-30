require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.active_job.queue_adapter = :sidekiq 

    # config.active_job.queue_adapter = Rails.env.production? ? :sidekiq : :async
  end
end