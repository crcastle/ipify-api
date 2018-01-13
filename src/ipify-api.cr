require "./ipify-api/*"
require "http/server"

module Ipify::Api
  def self.run
    port = ENV["PORT"]?.try(&.to_i) || 8080
    server = HTTP::Server.new(port) do |context|
      ip = context.request.headers["X-Forwarded-For"]? || "No X-Forwarded-For header"
      context.response.content_type = "text/plain"
      context.response.print ip
    end
    
    puts "Listening on port #{port}"
    server.listen
  end
end

Ipify::Api.run

