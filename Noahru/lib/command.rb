module Noahru
  class Command
    attr_accessor :sister, :user_id, :mode
    
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
        :sister => self.sister,
        :user_id => self.user_id,
        :mode => self.mode,
      }
    end
    
    def build_url(talk)
      base_url = "http://api.flum.pw/apis/command?api_key=#{@client.get_api_key}"
      base_url << "&sister=#{self.sister}" unless self.sister.nil?
      base_url << "&user_id=#{self.user_id}" unless self.user_id.nil?
      base_url << "&mode=#{self.mode}" unless self.mode.nil?
      base_url << "&utt=#{talk}"
      return URI.escape(base_url)
    end
    
    def send_command talk
      response = open(build_url(talk))
      result = JSON.parse(response.read)
      raise NoahruError, result['error']['message'] unless result['error'].nil?
      self.mode = result['mode']
      self.user_id = result['user_id']
      self.sister = result['sister']
      return result['utt']
    end
  end
end