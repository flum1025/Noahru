require 'open-uri'
require 'json'
require 'uri'
require 'active_support'
require 'active_support/core_ext'

module Noahru
  class Dialogue
    attr_accessor :request_params, :response_params
    
    def initialize(api_key)
      @client = Client.new(api_key)
    end
    
    def configure(options = {})
      @request_params = options.to_param
    end
    
    def create_dialogue talk, options = {}
      uri = URI(File.join(@client.base_url, 'apis/dialogue'))
      uri.query = options.merge(api_key: @client.api_key).to_param
      response = open(uri)
      result = JSON.parse(response.read)
      raise NoahruError, result['error']['message'] unless result['error'].nil?
      @response_params = result
      return result['utt']
    end
  end
end