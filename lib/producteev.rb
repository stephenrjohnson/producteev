require "rubygems"
require "bundler/setup"
require 'digest/md5'
require "httparty"
require "json"

require File.expand_path('../producteev/api.rb', __FILE__)
require File.expand_path('../producteev/labels.rb', __FILE__)
require File.expand_path('../producteev/tasks.rb', __FILE__)
require File.expand_path('../producteev/activities.rb', __FILE__)
require File.expand_path('../producteev/dashboards.rb', __FILE__)
require File.expand_path('../producteev/users.rb', __FILE__)
require File.expand_path('../producteev/validator.rb', __FILE__)
require File.expand_path('../producteev/client.rb', __FILE__)

module Producteev
  class << self

    def new(apikey,secret, debug = false)
      Producteev::Api.instance.api_set(apikey,secret, debug)
      return self
    end

    def login (username, password)
      return Producteev::Client.new(username, password)
    end
  end
end
