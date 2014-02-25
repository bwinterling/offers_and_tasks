source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.16'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'haml-rails'
gem 'pg'
gem "active_model_serializers"

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'pry-rails'
  gem 'pry-plus'
end
group :development, :test do
  gem 'capybara'
  gem 'awesome_print'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'sqlite3'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
