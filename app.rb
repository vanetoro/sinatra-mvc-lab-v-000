require_relative 'config/environment'
require 'pry'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/user_input' do
    binding.pry
    @text = Piglatinizer.new(params[:name])
    @text.to_pig_latin
  end
end
