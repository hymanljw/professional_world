require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProfessionalWorld
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.time_zone = 'Beijing'

    config.load_defaults 5.1

    config.i18n.default_locale = "zh-CN"

    config.active_job.queue_adapter = :sidekiq

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.middleware.use FayeRails::Middleware, mount: '/faye', timeout: 25 do
      map '/notify/**' => NotifyController
      map default: NotifyController
      add_extension(ClientEvent.new)
    end
    config.middleware.delete Rack::Lock

  end
end
