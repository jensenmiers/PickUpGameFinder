class GamesController < ApplicationController

    #Get ALL Games
    get '/games' do
        Game.all.to_json
    end

    get '/games/:id' do
        game_specific = Game.find(params[:id])
        game_specific.to_json
    end

# fetch('http://localhost:9292/games')
#     .then()
#     .then(do something with the data)

    #Create a game
    post '/games' do
        game = Game.create(game_start: params[:game_start], game_end: params[:game_end], capacity: params[:capacity])
        # game.player = current_user
        # game.save
            #associate the created game with our (GYM/PLAYER/ETC?)

        # game = games.create(params)
        # game.to_json

        # game = current_user.games.create(params)
        # game.to_json
    end

    #Edit a game
    patch '/games/:id' do
        game_specific_edit = Game.find(params[:id])
        game_specific_edit.update(game_start: params[:game_start],game_end: params[:game_end], capacity: params[:capacity])
        game_specific_edit.to_json
    end

    #Delete a game
    delete '/games/:id' do
        game_delete = Game.find(params[:id])
        game_delete.destroy
    end

end