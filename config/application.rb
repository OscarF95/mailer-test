require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sample
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.active_record.raise_in_transactional_callbacks = true

    config.active_job.queue_adapter = :delayed_job
    config.action_mailer.default_url_options = { host: 'example.com' }

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        #address: 'localhost',
        #port: 1025
        address:              'smtp.gmail.com',
        port:                 587,
        domain:               '',
        user_name:            '',
        password:             '',
        authentication:       'plain',
        enable_starttls_auto: true
    }

  end
end
