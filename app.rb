require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pl_text = PigLatinizer.new

        erb :piglatinized
    end

end