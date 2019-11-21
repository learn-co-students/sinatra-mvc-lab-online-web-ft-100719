require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    pig_latin=PigLatinizer.new
    @phrase=pig_latin.piglatinize(params[:user_phrase])
    erb :results
  end


end

# Original (and working) answer
# post '/piglatinize' do
#
#   @phrase=PigLatinizer.new(params[:user_phrase])
#
#   erb :results
# end
