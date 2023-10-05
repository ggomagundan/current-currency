source 'https://rubygems.org'

ruby '2.7.1' 
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '7.1.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

gem 'pg', group: :production
gem 'sqlite3', group: :development
# Use Puma as the app server

gem 'puma', '~> 4.3', '>= 4.3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0', '>= 6.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '>= 4.5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 4.0.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'exception_notification', '>= 4.5.0'

#gem 'redis'
#gem 'redis-rails'
#gem 'redis-objects'
#gem 'sidekiq'

gem 'nifty-generators'
gem 'hirb'
gem 'mysql2'#, '~> 0.3.18'

gem 'carrierwave', '>= 2.1.1'
gem 'carrierwave-ftp', '>= 0.4.1', :require => 'carrierwave/storage/sftp' # SFTP only
gem 'fog'

gem 'whenever'
gem 'koala'
gem 'pry'
gem 'kaminari',  github: "amatsuda/kaminari", branch: '0-17-stable'

gem "mocha"

gem "devise", ">= 4.7.3"

gem 'nested_form'

gem 'brakeman' # For check Secitury

gem 'delayed_job_active_record'
gem 'daemons'

gem 'bootstrap', '~> 4.4.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

gem 'md-date-time-picker-rails'

# gem 'rails_emoji', '~> 1.8.0'

gem 'dotenv-rails', '>= 2.7.6'

gem 'skylight', group: :production

gem 'rails-controller-testing', '>= 1.0.5', group: :test

gem 'rubocop', require: false,  group: :development

gem 'searchkick'

gem 'lograge', '>= 0.12.0'

gem 'clipboard-toastr-rails'

gem "font-awesome-rails", ">= 4.7.0.8"

gem "coinone"#, path: "/Users/kai/Copy/projects/rails/coinone", group: :development

gem 'telegram-bot-ruby'

