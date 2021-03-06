require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Code4goodpbc
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.assets.paths << Rails.root.join('vendor', 'social', 'css')
    config.assets.paths << Rails.root.join('vendor', 'social', 'css', 'font-awesome')
    config.assets.paths << Rails.root.join('vendor', 'social', 'fonts', 'font-awesome')
    config.assets.paths << Rails.root.join('vendor', 'social', 'fonts', 'footable')
    config.assets.paths << Rails.root.join('vendor', 'social', 'fonts', 'glyphicons_free')
    config.assets.paths << Rails.root.join('vendor', 'social', 'fonts', 'glyphicons_pro')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img', 'avatars')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img', 'bootstrap-colorpicker')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img', 'docs')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img', 'gallery')
    config.assets.paths << Rails.root.join('vendor', 'social', 'img', 'plugins')
    config.assets.paths << Rails.root.join('vendor', 'social', 'js')
    config.assets.paths << Rails.root.join('vendor', 'social', 'js', 'demo')
    config.assets.paths << Rails.root.join('vendor', 'social', 'js', 'plugins')
    config.assets.paths << Rails.root.join('vendor', 'fullcalendar')

    config.assets.precompile += ["*.gif", "*.png", "*.jpg", "*.jpeg", "*.svg", "*.eot", "*.woff", "*.woff", "*.woff2", "*.ttf", "*.otf"]

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.before_initialize do
      dev = File.join(Rails.root, 'config', 'config.yml')
      YAML.load(File.open(dev)).each do |key,value|
        ENV[key.to_s] = value
      end if File.exists?(dev)
    end
  end
end
