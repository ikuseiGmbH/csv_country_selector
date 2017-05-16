# CsvCountrySelector

Provide helpers and selectors for an German country and language list based on a csv file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csv_country_selector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv_country_selector

## Usage

```ruby
CsvCountrySelector::Country.short_name_for("Deutschland")  => "DE"
```

```ruby
CsvCountrySelector::Country.long_name_for("de") => "Deutschland"
```

```ruby
CsvCountrySelector::Country.long_list => ["Deutschland", "USA", ..]
```

```ruby
CsvCountrySelector::Country.short_list => ["DE", "AT", ..]
```

```ruby
CsvCountrySelector::Country.codes => { de: "Deutschland", at: "Österreich", ... }
```

```ruby
CsvCountrySelector::Country.is_in_eu?("de") => true
```

```ruby
CsvCountrySelector::Country.is_in_eu?("DE") => true
```

```ruby
CsvCountrySelector::Country.is_in_eu?("US") => false
```

## Development


## Contributing


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
