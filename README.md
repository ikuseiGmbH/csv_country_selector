# CsvCountrySelector

List of countries and depending shortnames of an SAP Server to Match human readable names.

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
CsvCountrySelector::Country.long_name_for("de")  => "Deutschland"
```

```ruby
CsvCountrySelector::Country.long_list  => ["Deutschland", "USA", ..]
```

```ruby
CsvCountrySelector::Country.short_list  => ["DE", "AT", ..]
```

```ruby
CsvCountrySelector::Country.codes  => {:de => "Deutschland", :at => "Österreich", ...}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/csv_country_selector/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
