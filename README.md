Yt::URL - a URL extension for the Yt library
============================================

Yt::URL helps you identify YouTube resources from their URL.

The **source code** is available on [GitHub](https://github.com/claudiob/yt-url) and the **documentation** on [RubyDoc](http://www.rubydoc.info/gems/yt-url/frames).

[![Build Status](http://img.shields.io/travis/claudiob/yt-url/master.svg)](https://travis-ci.org/claudiob/yt-url)
[![Coverage Status](http://img.shields.io/coveralls/claudiob/yt-url/master.svg)](https://coveralls.io/r/claudiob/yt-url)
[![Dependency Status](http://img.shields.io/gemnasium/claudiob/yt-url.svg)](https://gemnasium.com/claudiob/yt-url)
[![Code Climate](http://img.shields.io/codeclimate/github/claudiob/yt-url.svg)](https://codeclimate.com/github/claudiob/yt-url)
[![Online docs](http://img.shields.io/badge/docs-✓-green.svg)](http://www.rubydoc.info/gems/yt-url/frames)
[![Gem Version](http://img.shields.io/gem/v/yt-url.svg)](http://rubygems.org/gems/yt-url)

After [registering your app](https://claudiob.github.io/yt), you can run commands like:

```ruby
url = Yt::URL.new "youtu.be/gknzFj_0vvY"
url.kind # => :video
url.id # => "gknzFj_0vvY"
url.canonical # => "https://www.youtube.com/watch?v=gknzFj_0vvY"
url.resource # => #<Yt::Video @id=gknzFj_0vvY>
```

The **full documentation** is available at [rubydoc.info](http://www.rubydoc.info/gems/yt-url/frames).


A comprehensive guide to Yt
===========================

All the classes and methods available are detailed on the [Yt homepage](https://claudiob.github.io/yt/):

[![Yt homepage](https://cloud.githubusercontent.com/assets/10076/19788369/b61d7756-9c5c-11e6-8bd8-05f8d67aef4e.png)](https://claudiob.github.io/yt/)

Please proceed to [https://claudiob.github.io/yt/urls.html](https://claudiob.github.io/yt/urls.html) for more details and examples.


How to install
==============

To install on your system, run

    gem install yt-url

To use inside a bundled Ruby project, add this line to the Gemfile:

    gem 'yt-url', '~> 0.0.0'

Since the gem follows [Semantic Versioning](http://semver.org),
indicating the full version in your Gemfile (~> *major*.*minor*.*patch*)
guarantees that your project won’t occur in any error when you `bundle update`
and a new version of Yt is released.

How to test
===========

To run live-tests against the YouTube API, type:

```bash
rspec
```

This will fail unless you have set up a test YouTube application and some
tests YouTube accounts to hit the API. If you cannot run tests locally, you
can open PR against the repo and Travis CI will run the tests for you.

These are the environment variables required to run the tests in `spec/requests/server`:

- `YT_SERVER_API_KEY`: API Key of a Google app with access to the YouTube Data API v3 and the YouTube Analytics API

No environment variables are required to run the other tests.

How to release new versions
===========================

If you are a manager of this project, remember to upgrade the [Yt gem](http://rubygems.org/gems/yt-url)
whenever a new feature is added or a bug gets fixed.

Make sure all the tests are passing on [Travis CI](https://travis-ci.org/claudiob/yt-url),
document the changes in HISTORY.md and README.md, bump the version, then run

    rake release

Remember that the yt gem follows [Semantic Versioning](http://semver.org).
Any new release that is fully backward-compatible should bump the *patch* version (0.0.x).
Any new version that breaks compatibility should bump the *minor* version (0.x.0)

How to contribute
=================

Contribute to the code by forking the project, adding the missing code,
writing the appropriate tests and submitting a pull request.

In order for a PR to be approved, all the tests need to pass and all the public
methods need to be documented and listed in the guides. Remember:

- to run all tests locally: `bundle exec rspec`
- to generate the docs locally: `bundle exec yard`
- to list undocumented methods: `bundle exec yard stats --no-doc`
