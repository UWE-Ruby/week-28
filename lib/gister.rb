
require 'faraday'
require 'hashie'
require 'ostruct'


module Gister

  #
  # @see http://developer.github.com/v3/gists/
  #
  class Gister

    def public_gists
      connection.get "/gists"
    end

    def connection
      Faraday.new :url => "https://api.github.com"
    end

  end

end

require_relative 'gist_builder'
require_relative 'gist'
require_relative 'user'