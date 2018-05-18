require 'sinatra/base'
require 'json'
require_relative './lib/data.rb'


class ThermoNuclearServer < Sinatra::Base
  enable :sessions
  set :session_secret, 'fsddsgjk22'

  before do
    @datastorage = NuclearData.instance
  end

  get '/' do
    headers 'Access-Control-Allow-Origin' => '*'
    {temp: @datastorage.temp, mode: @datastorage.mode}.to_json
  end

  post '/' do
    headers 'Access-Control-Allow-Origin' => '*'
    @datastorage.temp  = params[:temperature]
    @datastorage.mode  = params[:mode]
    puts 'bye'
    redirect '/'
  end
end
