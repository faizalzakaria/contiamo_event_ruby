require 'faraday'
require 'json'

module ContiamoEvent
  class Base
    ENDPOINT    = 'https://track.contiamo.com/v3/'

    def headers
      {
        'User-Agent'        => 'ContiamoEvent Ruby SDK',
        'Content-Type'      => 'application/json'
      }
    end

    def endpoint
      ENDPOINT + "#{ContiamoEvent.configuration.token}/"
    end

    def connection
      conn = Faraday.new(url: endpoint) do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

    def post(action, args)
      resp = connection.post do |req|
        req.url "#{action}"
        req.headers = headers
        req.body = args.to_json
      end
      [resp.status, resp.body]
    end
  end
end
