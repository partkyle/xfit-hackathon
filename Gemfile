source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'mysql2'
gem 'pg'
gem 'foreigner'

gem 'uuid'

gem 'sendgrid'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'bootstrap-sass', '~>1.4.1'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'

  gem 'therubyracer'
end

# twitter bootstrap forms
gem 'twitter_bootstrap_form_for', :git =>  'git://github.com/softmachine/twitter_bootstrap_form_for.git'

gem 'jquery-rails'

gem 'heroku'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

gem "nifty-generators", :group => :development
gem "mocha", :group => :test

group :test do
  gem 'rspec-rails'
  gem "factory_girl_rails"
end

group :development do

  # RSpec & Autotest
  gem 'rspec-rails'
  gem 'ZenTest'

  # TESTING LIKE A BOSS
  gem 'guard'

  ##
  # Filesytem Listener Libraries for Guard
  gem 'rb-inotify', :require => false # Linux
  gem 'rb-fsevent', :require => false # Mac
  gem 'growl', :require => false                  # Uncomment if on a Mac
  # gem 'rb-fchange', :require => false # Windows
  # gem 'rb-notifu'
  # gem 'win32console'

  # Spectacular!
  gem 'guard-rspec'
  gem 'rspec-instafail' # Show failing tests instantly

  # Hitting refresh is for noobs
  gem 'guard-livereload'

  # Spork for lightning fast test runs
  gem 'spork', '>= 0.9.0.rc8'
  gem 'guard-spork'

  # BDD LIKE A BOSS
  # gem 'guard-cucumber' # We bosses now

  # Stylin like you ain't a rook in the game
  # gem 'guard-compass' # Still rookies in the game
end
