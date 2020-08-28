require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    sentence = params[:user_input]
    word = PigLatinizer.new
    @pig_latinized_word = word.to_pig_latin("somethin else")
    puts params
    erb :pig_latin
  end
end
