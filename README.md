# Boolify

Basic library for being able to call a method on any object and determine whether
it's intended to be a boolean of any type.

## Installation

Add this line to your application's Gemfile:

    gem 'boolify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boolify

## Usage

    nil.boolify     #=> false
    ''.boolify      #=> false
    '1'.boolify     #=> true
    't'.boolify     #=> true
    'true'.boolify  #=> true
    'y'.boolify     #=> true
    'yes'.boolify   #=> true
    'yaarr'.boolify #=> true
    'aye'.boolify   #=> true
    [].boolify      #=> false
    [:hey].boolify  #=> true
    {}.boolify      #=> false
    {a: 'a'}        #=> true

A good place to use it is inspecting parameters

    do_something if params[:my_bool].boolify


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
