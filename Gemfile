 source 'http://rubygems.org'

 gem 'rails', '3.1.1'
 gem 'pg', '0.11.0'
 gem 'heroku', '2.11.0'
 gem 'gravatar_image_tag', '1.0.0'
 gem 'will_paginate', '3.0.2'
 gem 'faker', '1.0.1'		# This shouldn't be here, but Heroku errors won't stop!

 gem 'jquery-rails', '1.0.16'
 
 # To use ActiveModel has_secure_password
 # gem 'bcrypt-ruby', '~> 3.0.0'


 # Gems used only for assets and not required
 # in production environments by default.
 group :assets do
   gem 'sass-rails',   '~> 3.1.4'
   gem 'coffee-rails', '~> 3.1.1'
   gem 'uglifier', '>= 1.0.3'
 end


 group :development do
   gem 'rspec-rails', '2.7.0'
   gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
 end
 
 group :test do
   gem 'turn', :require => false    # Pretty printed test output
   gem 'rspec-rails', '2.7.0'
   gem 'webrat', '0.7.3'
   gem 'factory_girl_rails', '1.3.0'
 end
 
 group :production do
   gem 'thin', '1.2.11'
 end
