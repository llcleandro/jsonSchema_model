require 'httparty'
require 'rspec'
require 'pry'
require 'json-schema'

$env = ENV['ENV'] || 'PRD'
ENVIRONMENT = (YAML.load_file('./config/environment.yml'))[$env]