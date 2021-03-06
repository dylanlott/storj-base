require 'rubygems'
require 'bundler/setup'

require 'active_support/core_ext/object/try'
require 'thor'
require 'date'
require 'open3'
require 'erb'
require 'json'
# require 'yaml'

# db_config_file = File.open("#{__dir__}/db/mongoid.yml")
# db_config_string_template = db_config_file.read
# db_config_string = ERB.new(db_config_string_template, 0).result binding
# db_config = YAML.load db_config_string

# NB: for some reason the docker container on ECS needs this
require_relative './thorfiles/base'

require_dirs = %w(thorfiles)
Dir["#{__dir__}/{#{require_dirs.join ','}}/*{,*}"].each { |file| require file }
