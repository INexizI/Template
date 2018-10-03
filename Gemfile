source 'http://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails'
gem 'puma'
gem 'duktape'

gem 'clockwork', require: false

gem 'faye'
gem 'thin'

gem 'bcrypt'

gem 'cancancan'

gem 'i18n'

gem 'rack-utf8_sanitizer'

# gem 'therubyracer'
# gem 'metro-ui-rails'

# database & cache
gem 'dalli'
gem 'pg'
gem 'pghero'
gem 'redis'
gem 'redis-mutex'
gem 'redis-namespace'
gem 'msgpack'

# frontend
group :beta, :production do
  gem 'autoprefixer-rails'
end
gem 'bourbon'
gem 'coffee-rails'
gem 'non-stupid-digest-assets'
gem 'sassc-rails'

# turbolinks
gem 'gon'
gem 'turbolinks'
gem 'uglifier'
gem 'webpacker'

# templates
gem 'jbuilder'
gem 'slim-rails'

# background jobs
gem 'sidekiq'
gem 'sidekiq-limit_fetch'
gem 'sidekiq-unique-jobs'

# auth
gem 'devise'
gem 'omniauth'
gem 'doorkeeper'
gem 'devise-doorkeeper'

gem 'rack-contrib'
gem 'responders'
gem 'zaru'

gem 'apipie-rails'
gem 'gcm'
gem 'maruku'
gem 'open_uri_redirections'

gem 'actionpack-action_caching'
gem 'attr_extras'
gem 'nokogiri'
gem 'paperclip'
gem 'paperclip-i18n'
gem 'simple_form'
# gem 'simple_form-magic_submit'
gem 'state_machine'
gem 'active_model_serializers'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'bootsnap', require: false

group :development, :test do
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false

  gem 'rspec'
  gem 'spring-commands-rspec'

  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-i18n-js', require: false
  gem 'guard-pow', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-spring', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'dotenv-rails'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'letter_opener'
  gem 'mactag'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'scout_apm'
  gem 'airbrussh', require: false
  gem 'capistrano'
  gem 'capistrano-bundler', require: false
  gem 'capistrano-copy-files', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv', require: false
  gem 'active_record_query_trace'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
