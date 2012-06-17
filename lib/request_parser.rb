class RequestParser
  
  def self.perform(request)
    {
      source_ip: request.remote_ip,
      user_agent: request.env['HTTP_USER_AGENT'],
      language: request.env['HTTP_ACCEPT_LANGUAGE'],
      charset: request.env['HTTP_ACCEPT_CHARSET'],
      os: get_os_name(request.env['HTTP_USER_AGENT']),
      browser: get_browser_name(request.env['HTTP_USER_AGENT'])
    }
  end


  private

  class << self
    
    def get_browser_name(user_agent)
      "<BROWSER NAME>"
    end
    
    def get_os_name(user_agent)
      oss = {
        'Mac OS X'  => 'Mac OS',
        'Windows'   => 'Windows',
        'Android'   => 'Android',
        'Linux'     => 'Linux'
      }
      user_agent.split(/\s*[;)(]\s*/).each do |fragment|
        oss.each_key do |key|
          return oss[key] if fragment.scan(key).any?
        end
      end
      return 'Unknown'
    end

  end

end
