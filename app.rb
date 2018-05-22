require_relative 'config/environment'
require 'pry'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
   @text = Piglatinizer.new(params[:name])
   binding.pry
    erb :piglatinize

  end
end
