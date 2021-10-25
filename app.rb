require_relative 'config/environment'

class App < Sinatra::Base

    #set :show_exceptions => false

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @text = params[:user_phrase]

        @piglatinze = PigLatinizer.new
        #erb :piglatinize
    end
end