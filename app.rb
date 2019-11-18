require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    latin = PigLatinizer.new
    @pig_latin = latin.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end