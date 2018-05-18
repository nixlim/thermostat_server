require 'sinatra/base'


class ThermoNuclearServer < Sinatra::Base

  get '/' do
    'hello world'
  end

  post '/thermonuclear' do
    'hello world'
  end
end