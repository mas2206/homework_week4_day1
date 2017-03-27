require('pry-byebug')
require('sinatra')
require('sinatra/contrib/all')
require('./models/rock_paper_scissors')

get '/rps/' do
  erb(:welcome)
end

get '/rps/:option1/:option2' do
  game = Game.new(params[:option1], params[:option2])
  @result = game.play()
  erb(:result)
end