require 'pry'

class PlayersController < ApplicationController
    def index
        players = Player.all 
        render json: players
    end

    def show
        player = Player.find(params[:id])
        render json: player
    end

    def create 
        team = Team.find(params[:team_id])
        player = team.players.build({
            name: Faker::Name.first_name
        })
        render json: player.save ?  player : {message: player.errors.messages[:team_max][0]}
    end

    def destroy 
        player = Player.find(params[:id])
        player.destroy
    end
end
