require 'sinatra'

get '/' do
  "Hello #{request.ip} from #{`whoami`.strip}@#{`hostname`.strip}!\nVersion: #{File.read('VERSION')}\n"
end
