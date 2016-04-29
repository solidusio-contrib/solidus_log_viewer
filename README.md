Solidus Log Viewer
==============

[![Build Status](https://travis-ci.org/solidusio-contrib/solidus_log_viewer.svg?branch=master)](https://travis-ci.org/solidusio-contrib/solidus_log_viewer)

A log viewer for Solidus

Makes it easy for admin to view logs. Logs are anything in the log_entries table.

Currently only the payment model uses it, but the LogEntry is polymorphic so it will work with any other model

NOTE: app/views/admin/payments/_list.html.erb is overwritten by this gem


Routes
==========

You will get the following route:

`admin_log_entries_path`

You can optionally pass filters:

`admin_log_entries_path(:source_type => 'Payment', :source_id => @payment.id)`

Installation
=======

Add this to your `Gemfile`

`gem 'solidus_log_viewer', :git => 'git://github.com/DynamoMTL/solidus_log_viewer.git'`

Run bundler

`bundle`

And you are done!!

Copyright (c) 2011 Dynamo Design Studio, released under the New BSD License
