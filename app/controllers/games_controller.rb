class GamesController < ApplicationController

    #Get ALL Games
    get '/games' do
        Game.all.to_json(include: :gym)
    end

    get '/games/:id' do
        game_specific = Game.find(params[:id])
        game_specific.to_json
    end

    #Create a game
    post '/games' do
        game = Game.create(game_start: params[:game_start], game_end: params[:game_end], capacity: params[:capacity], gym_id: params[:gym_id])
        game.to_json
    end

    #Edit a game
    patch '/games/:id' do
        game_specific_edit = Game.find(params[:id])
        game_specific_edit.update(game_start: params[:game_start],game_end: params[:game_end], capacity: params[:capacity], gym_id: params[:gym_id])
        game_specific_edit.to_json
    end

    #Delete a game
    delete '/games/:id' do
        game_delete = Game.find(params[:id])
        game_delete.destroy
    end

end