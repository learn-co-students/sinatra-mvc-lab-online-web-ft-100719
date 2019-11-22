require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @latinized_word = PigLatinizer.new.piglatinize(params[:user_phrase])

    erb :pigged_word
  end

end