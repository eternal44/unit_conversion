# UnitConversion

An updated unit conversion plugin for rails.

## Dependencies
Ruby 2.x
Rails 4.x

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unit_conversion'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unit_conversion

## Usage
Always refer to unit conversion methods without an 's'.
    Wrong way: inches_to_feet
    Right way: inch_to_feet

Instructions:

    temperate = UnitConversion.new(0)
    temperature.celcius_to_kelvin

    => 273.15

## Units available for conversion

Temperature:
- Fahrenheit
- Celcius
- Kelvin
- Rankine

Distance:
- Metric
- Imperial

## Development

I'll be adding more conversions along with a small group I'm working
with.  Feel free to watch this repo to keep up with what new conversions
we add.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/unit_conversion. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

