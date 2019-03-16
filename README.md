# Lpgrid

Last Pass Grid reader

[![Build Status](https://api.travis-ci.org/equivalent/lpgrid.png?branch=master)](http://travis-ci.org/equivalent/lpgrid)
[![Code Climate](https://codeclimate.com/github/equivalent/lpgrid.png)](https://codeclimate.com/github/equivalent/lpgrid)


Given you use [LastPass](https://lastpass.com) with Grid MFA
(multifactor authentication) this small Ruby CLI tool will help you read 
your LastPass generated `grid.csv`.

All you need to do is download `grid.csv` to home folder as `~/.grid.csv`

Then install this Ruby Gem: `gem install lpgrid` (this application)

And run `lpgrid`

example:

```
$ lpgrid
Welcome to Lpgrid - Last Pass Grid reader !
Enter grid fields separated by space or "exit" to quit
c2 b2 u8 x0
=> 1 8 2 3
```



## Development

### Requirements

Ruby 2.0 or greater.

### Installation

    git clone git@github.com:equivalent/lpgrid.git

### Usage

    cd lpgrid
    bin/lpgrid

### Tests

To run tests trigger

    rake

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes with TESTS (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
