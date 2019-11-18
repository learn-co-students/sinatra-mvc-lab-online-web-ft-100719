require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
  get '/' do
      erb :user_input
  end
    
  post '/piglatinize' do
    user_phrase = PigLatinizer.new(params[:user_phrase])
    @pig_phrase = user_phrase.translate_phrase
    
    erb :results
  end

end