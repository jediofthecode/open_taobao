require 'cgi'

class Hash
  def to_query_tb
    self.map { |k, v| "#{k.to_s}=#{CGI::escape(v.to_s)}" }.join('&')
  end
end
