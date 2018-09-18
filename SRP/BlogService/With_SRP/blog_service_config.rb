class BlogServiceConfig
  def initialize(env:)
    @env = env
  end

  def base_url
    return 'https://prod.myserver.com' if @env == 'production'

    'https://jsonplaceholder.typicode.com'
  end
end
