require_relative 'config/environment'
require 'pry'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    binding.pry
    @text = Piglatinizer.new(params[:name])
    erb :piglatinize
  end
end
