require 'rubygems'
require 'sass'
require 'bundler'

Bundler.require

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

require './blog'

run Blog
