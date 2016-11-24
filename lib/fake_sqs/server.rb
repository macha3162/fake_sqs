module FakeSQS
  class Server

    attr_reader :host, :port, :host_port

    def initialize(options)
      @host = options.fetch(:host)
      @port = options.fetch(:port)
      @host_port = options.fetch(:host_port)
    end

    def url_for(queue_id)
      if host_port.nil?
        "http://#{host}:#{port}/#{queue_id}"
      else
        "http://#{host_port}/#{queue_id}"
      end
    end

  end
end
