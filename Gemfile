source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'pg'

group :development, :test do
    gem 'spring'
    gem 'letter_opener'

    gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
    gem 'pry-byebug'
end

group :development do
    gem 'better_errors'
    gem 'binding_of_caller'
end

group :test do
    gem 'guard-rspec'
    gem 'spring-commands-rspec'
    gem 'rb-fsevent' if `uname` =~ /Darwin/

    gem 'rspec-rails', '~> 3.2'
    gem 'capybara',    '~> 2.4'
    gem 'fabrication', '~> 2.13'

    gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'

    gem 'fuubar',      '~> 2.0'
    gem 'faker',       '~> 1.4'
end
