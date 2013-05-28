require 'base64'
module BasicAuth
  def self.encode(username, password)
    s = [username, password].join(":")
    "Basic #{Base64.strict_encode64 s}"
  end

  def self.decode(header)
    base64 = header[/Basic (.*)/, 1]
    Base64.decode64(base64).split(":")
  end
end
