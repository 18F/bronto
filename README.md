# BrontoGem

A thesaurus gem.

## Installation (pending)

Add this line to your application's Gemfile:

```ruby
gem 'bronto-gem', '0.0.2'
````

And then execute:

```sh
$ bundle
```


Or install it yourself as:

```sh
$ gem install bronto
```

## Usage

```ruby
require 'bronto'

synonyms = BrontoGem.lookup("fish") #=> 

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
     "soul"]
  }
}
```

## Contributing

1. Fork it ( https://github.com/adelevie/bronto-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

See `LICENSE.txt`
