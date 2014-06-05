require "rubygems"
require "bundler/setup"

cwd = Pathname(__FILE__).dirname
$:.unshift(cwd.to_s) unless $:.include?(cwd.to_s) || $:.include?(cwd.expand_path.to_s)

require 'bronto/version'
require 'bronto/thesaurus'
