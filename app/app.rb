require 'sinatra/base'
require 'json'
require_relative './lib/data.rb'


class ThermoNuclearServer < Sinatra::Base
  enable :sessions
  set :session_secret, 'fsddsgjk22'

  before do
    headers 'Access-Control-Allow-Origin' => '*'
    Data.create
    @datastorage = Data.instance
  end

  get '/' do
    {temp: 30, mode: 'on'}.to_json
    p @datastorage
    puts "hi"
  end

  post '/' do

    @datastorage.temp  = params[:temperature]
    @datastorage.mode  = params[:mode]
    puts 'bye'
    redirect '/'
  end
end
