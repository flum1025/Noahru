module Noahru
  class Get_talk
    attr_accessor :context
    
    def initialize(api_key)
      @client = Client.new(api_key)
    end
    
    def configure(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
    
    def get_current_data
      return data = {
        :context => self.context,
      }
    end
    
    def build_url
      base_url = "http://api.flum.pw/apis/get_talk?api_key=#{@client.get_api_key}"
      base_url << "&context=#{self.context}" unless self.context.nil?
      return URI.escape(base_url)
    end
    
    def get_talk
      response = open(build_url)
      result = JSON.parse(response.read)
      raise NoahruError, result['error']['message'] unless result['error'].nil?
      return result
    end
  end
end