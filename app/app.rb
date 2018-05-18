require 'sinatra/base'
require 'json'


class ThermoNuclearServer < Sinatra::Base
  enable :sessions

  get '/' do
    headers 'Access-Control-Allow-Origin' => '*'
    @temp = {temp: 30, mode: 'on'}.to_json
    haml :index
  end

  post '/thermonuclear' do
    session[:powersaver] = 'on'
    session[:temp] = 30
    redirect '/'
  end
end