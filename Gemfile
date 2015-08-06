source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#---------------------------------------------------------------------------------------------

# Post.paginate(:page => params[:page], :per_page => 30) in controller
# <%= will_paginate @posts %> in erb
# also a Bootstrap version
gem 'will_paginate', '~> 3.0.7'

# rails generate uploader "name of uploader, ex. Cover", column name should match uploader name
# mount_uploader :cover, CoverUploader in model
# <%= image_tag @Book.cover.url if @Book.cover?%> in erb
# gem 'carrierwave', '~> 0.10.0'

# rails generate devise:install
# rails generate devise User
# rails g devise:views
# new_user_registration_path, path for new user
# more help: https://gorails.com/episodes/user-authentication-with-devise
# gem 'devise', '~> 3.5.1'

# rails generate sorcery:install reset_password
gem sorcery

#---------------------------------------------------------------------------------------------

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

#---------------------------------------------------------------------------------------------

gem 'rails_12factor', group: :production

group :development do
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  # rails g annotate:install, runs annotation on every rake migration
  gem 'annotate', '~> 2.6.10'
end

