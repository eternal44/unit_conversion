# UnitConversion

An up-to-date, easy to use unit conversion gem.

## Dependencies
Ruby 2.x

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
If you want to convert from Celcius to Kelvin:

    celcius = UnitConversion.new(0, 'celcius')
    temperature.to_kelvin

    => 273.15

Refer to the list below and simply prefix a unit with "to_" to call the
instance method.  Also, always refer to unit conversion methods without an 
's' and in it's singular form:

    Wrong way:  to_meters
    Rgiht way:  to_meter

    Wrong way: to_feet
    Right way: to_foot

    Wrong way: to_mph
    Right way: to_miles_per_hour

## Units available for conversion

Temperature:
- Fahrenheit
- Celcius
- Kelvin
- Rankine

Distance:
- Meter
- Inch
- Foot
- Yard

Weight:
- Gram
- Ounce
- Pound
- Short Ton (US ton)
- Long Ton (British ton)

Speed:
- Mile per hour
- Kilometer per hour
- Foot per second
- Meter per second
- Knot

## Development

**Next Version:**
- more metric conversions for all measurements (ex: centi prefixes)

**Future measurements for conversion:**
- volume
- area
- time
- frequency
- data transfer rate
- digital storage
- energy

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/unit_conversion. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

