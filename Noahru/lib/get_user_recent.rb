module Noahru
  class Get_user_recent
    attr_accessor :user_id
    
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
        :user_id => self.user_id,
      }
    end
    
    def build_url
      base_url = "http://api.flum.pw/apis/get_user_recent?api_key=#{@client.get_api_key}"
      base_url << "&user_id=#{self.user_id}" unless self.user_id.nil?
      return URI.escape(base_url)
    end
    
    def get_user_recent
      response = open(build_url)
      result = JSON.parse(response.read)
      raise NoahruError, result['error']['message'] unless result['error'].nil?
      return result
    end

  end
end