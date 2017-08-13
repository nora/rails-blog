require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # time_zone setting @yir
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    # error msg 日本語化
    config.i18n.default_locale = :ja
  end
end
