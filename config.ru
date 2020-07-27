require 'bundler'
require 'pry'
require 'csv'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
run ApplicationController