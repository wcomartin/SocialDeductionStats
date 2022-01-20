class PlayersController < ApplicationController
    def index
        @players = Player.all
        render json: @players
    end

    def show
        @player = Player.find_by(slug: params[:slug])
        render json: @player
    end

    def create
        player = Player.new(player_params)

        if player.save
            render json: player
        else
            render json: {error: player.errors.messages }, status: 422
        end
    end

    def update
        player = Player.find_by(slug: params[:slug])
        
        if player.update(player_params)
            render json: player
        else
            render json: { error: player.errors.messages }, status: 422
        end
    end

    def destroy
        player = Player.find_by(slug: params[:slug])

        if player.destroy
            head :no_content
        else
            render json: { errors: player.errors.messages }, status: 422
        end
    end

    private

    def player_params
        params.require(:player).permit!
    end
end
