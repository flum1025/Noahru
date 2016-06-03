module Noahru
  class NoahruError < Exception; end
    
  BaseURL = 'http://api.sarasty.flum.pw'
  class Client
    attr_reader :api_key, :base_url
    
    def initialize(api_key, base_url = BaseURL)
      @api_key = api_key
      @base_url = base_url
    end
  end
end