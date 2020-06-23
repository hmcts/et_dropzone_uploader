require 'rack-proxy'

class ApiProxy < Rack::Proxy
  def rewrite_env(env)
    et_api_uri = URI.parse(ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api'))
    env.merge 'HTTP_HOST' => et_api_uri.host,
              'REQUEST_URI' => "#{ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api')}/v2/build_blob",
              'REQUEST_PATH' => "/api/v2/build_blob",
              'SCRIPT_NAME' => "/api/v2/build_blob",
              'PATH_INFO' => ''
  end

end
