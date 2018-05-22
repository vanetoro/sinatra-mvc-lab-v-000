require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  # POST '/user_input' do
  #   params[:text]
  # end
end
