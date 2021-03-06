require_relative 'boot'

require 'rails/all'
require "active_storage/engine"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Content
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    I18n.available_locales = [:en, :fa]
    I18n.default_locale = :fa
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
	config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
