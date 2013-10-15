---
layout: post
title: Fozzie Updates
categories: []
tags: []
status: publish
type: post
published: true
meta:
  _publicize_pending: '1'
  _elasticsearch_indexed_on: '2012-12-09 12:11:22'
---
This week we received a pull request to the<a href="https://github.com/lonelyplanet/fozzie">Fozzie</a>gem, which enabled developers to turn off the Fozzie Rails Middleware when used within a Rails application.

After some thinking I felt a better way to handle this was to abstract the Rails specific functionality into a seperate Gem, in the same pattern as the RSpec and RSpec Rails gems.

It also felt like a good time to promote Fozzie to Version 1.0.0, after some positive feedback I received at the<a href="http://www.meetup.com/London-Web-Performance-Group/events/67296732/">WebPerfDay</a>on Friday.

Therefore,<a href="http://rubygems.org/gems/fozzie/versions/1.0.0">Fozzie 1.0.0</a>is now up and requires you to add the following to your Rails application to monitor your Controller methods:

<code>gem 'fozzie_rails'</code>

If you want to use Fozzie in your Rails application, but without the Controller monitoring, use:

<code>gem 'fozzie'</code>

A big thank you to all who have so far contributed code and comments to Fozzie.
