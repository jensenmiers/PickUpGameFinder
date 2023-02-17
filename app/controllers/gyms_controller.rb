class GymsController < ApplicationController

    get '/gyms' do
        Gym.all.to_json
    end

    get '/gyms/:id' do
        gym_specific = Gym.find(params[:id])
        gym_specific.to_json
    end

    post '/gyms' do 
        gym = Gym.create(gym_name: params[:gym_name] , address: params[:address] , gym_phone_number: params[:gym_phone_number], open_gym_hours: params[:open_gym_hours])
        gym.to_json
    end

     #Delete a game
     delete '/gyms/:id' do
        gym_delete = Gym.find(params[:id])
        gym_delete.destroy
    end

end