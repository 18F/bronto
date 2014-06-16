# BrontoGem

A thesaurus gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bronto-gem', '0.1.0'
````

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install bronto-gem
```

## Usage

### In Your Application

```ruby
require 'bronto'

synonyms = Bronto::Thesaurus.new.lookup("fish") #=>

{
  verb: {
    syn: ["angle", "catch", "grab", "look for", "search", "seek", "take hold of"]
  },
  noun: {
    syn: [
    "aquatic vertebrate",
     "food",
     "individual",
     "mortal",
     "person",
     "pisces",
     "pisces the fishes",
     "solid food",
     "somebody",
     "someone",
     "soul"
     ]
  }
}
```

### Command Line

Bronto also ships with a command line interface, aptly named `bronto`.
`bronto` takes a list of words you would like to find synonyms for and
outputs them:

```text
~$ bronto fish capitol
Fetching synonyms for 'fish'...
  verb: angle, catch, grab, look for, search, seek, take hold of
  noun: aquatic vertebrate, food, individual, mortal, person, pisces, pisces the fishes, solid food, somebody, someone, soul

Fetching synonyms for 'mortal'...
  noun: being, causal agency, causal agent, cause, individual, organism, person, somebody, someone, soul
  adjective satellite: deadly, deathly
```

## Contributing

1. Fork it ( https://github.com/18F/bronto/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Public Domain. See `LICENSE.txt`
