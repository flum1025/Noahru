module Noahru
  class NoahruError < Exception; end
    
  class Client
    attr_accessor :api_key, :base_url
    
    def initialize(api_key)
      self.api_key = api_key
      self.base_url = 'http://api.sarasty.flum.pw'
    end
    
    def get_api_key
      return self.api_key
    end
  end
end