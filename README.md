SolidusLogViewer
================

[![CircleCI](https://circleci.com/gh/solidusio-contrib/solidus_log_viewer.svg?style=svg)](https://circleci.com/gh/solidusio-contrib/solidus_log_viewer)

A log viewer for Solidus

Makes it easy for admin to view logs. Logs are anything in the log_entries table.

Currently only the payment model uses it, but the LogEntry is polymorphic so it will work with any other model

NOTE: app/views/admin/payments/_list.html.erb is overwritten by this gem

Installation
------------

Add solidus_log_viewer to your Gemfile:

```ruby
gem 'solidus_log_viewer'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_log_viewer:install
```

Routes
------

You will get the following route:

`admin_log_entries_path`

You can optionally pass filters:

`admin_log_entries_path(:source_type => 'Payment', :source_id => @payment.id)`

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_log_viewer/factories'
```

Releasing
---------

Your new extension version can be released using `gem-release` like this:

```shell
bundle exec gem bump -v VERSION --tag --push --remote upstream && gem release
```

Copyright (c) 2011 Dynamo Design Studio, released under the New BSD License
