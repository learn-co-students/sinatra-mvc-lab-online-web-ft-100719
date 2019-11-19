require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        @piglatinizer = PigLatinizer.new
        @user_phrase = params[:user_phrase]
        "#{@piglatinizer.piglatinize(@user_phrase)}"
    end

end