Spree Log Viewer
==============

A log viewer for spree

Makes it easy for admin to view logs. Logs are anything in the log_entries table. Currently only the payment model uses it, but the LogEntry is polymorphic so it will work with any other model

Installation
=======

Add this to your `Gemfile`

`gem 'spree_log_viewer', :git => 'git://github.com/DynamoMTL/spree_log_viewer.git'`

Run bundler

`bundle`

And you are done!!

Copyright (c) 2011 Dynamo Design Studio, released under the New BSD License
