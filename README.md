# VotD - (Bible) Verse of the Day

VotD (Verse of the Day) is a Ruby Gem that wraps various web services that generate
daily Bible Verses.

Currently the gem supports one VotD web service:

* [Bible.org](http://labs.bible.org) - NETBible Translation

Other services are are planned:

* [Bible Gateway](http://www.biblegateway.com) - Multiple Translations
* [ESV Bible Web Service](http://www.esvapi.org/) - ESV Translation

If you are able to contribute modules for any of these, please see our [CONTRIBUTING]() file. Let us know before you begin work in case someone else has a module in-progress.

## Installation

Add this line to your application's Gemfile:

    gem 'votd'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install votd

## Usage

To use VotD in our code:

    require 'votd'
    
    votd = Votd.NetBible.new
    
    votd.reference   # Ephesians 2:8-9
    votd.text        # For by grace you are saved through faith...
    votd.date        # 2012-03-24
    votd.version     # NETBible
    
    votd.to_html     # <p class="votd-text">For by grace you are saved through faith...
    
Full text of HTML formatted VotD looks like the following

    <p class="votd-text">For by grace you are saved through faith... it is not from works, so that no one can boast.</p>
    <p>
    <span class="votd-reference"><strong>Ephesians 2:8-9</strong></span>
	<span class="votd-version"><em>(NETBible)</em></span>
	</p>

You can then use the provided CSS classes to style the VotD.

For command-line usage see [here](https://github.com/doctorbh/votd/wiki/Shell-Tool)

## Documentation

Documentation may be found [here]()

## Source Code

Source code is available in our [GitHub repository](https://github.com/doctorbh/votd).

## Authors

Christopher Clarke <beakr@ninjanizr.com>

Stephen Clarke <doctorbh@ninjanizr.com>

## Changelog

See our [CHANGELOG]() file.

## TODO

See our [TODO]() file.

## Requests

To submit bug, feature requests, patches see our [Issues List](https://github.com/doctorbh/votd/issues) on GitHub.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

See more on [CONTRIBUTING]().

## Copyright

&copy; 2012 Christopher Clarke, Stephen Clarke. See LICENSE for details.
