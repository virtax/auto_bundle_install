# AutoBundleInstall

Automatically run 'bundle install' in your Rails/Sinatra/etc. application

## Installation

Add this line to your application's Gemfile:

    gem 'auto_bundle_install'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install auto_bundle_install

## Usage

Rails:

```>rails s```

Sinatra:

```ruby
#app.rb
require 'auto_bundle_install'
```

```>ruby app.rb```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
