module Noahru
  class NoahruError < Exception; end
    
  class Client
    attr_accessor :api_key
    
    def initialize(api_key)
      self.api_key = api_key
    end
    
    def get_api_key
      return self.api_key
    end
  end
end