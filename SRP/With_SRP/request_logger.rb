module RequestLogger
  def log_request(service, url, method = 'GET')
    puts "[#{service}] #{method} #{url}"
  end
end
