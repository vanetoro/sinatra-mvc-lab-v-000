require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  POST '/user_input' do
    @text = Piglatinizer.new(params[:name])
    @text.to_pig_latin
  end
end
