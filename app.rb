require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
  get '/' do
      erb :user_input
  end
    
  post '/piglatinize' do
    new_pig_latinizer = PigLatinizer.new
    @pig_phrase = new_pig_latinizer.piglatinize(params[:user_phrase])

    erb :results
  end

end