require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  POST '/user_input' do
    @text = params[:name]
    @text.Piglatinizer.to_pig_latin
  end
end
