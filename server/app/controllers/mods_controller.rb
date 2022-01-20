class ModsController < ApplicationController
    def index
        @mods = Mod.all
        render :json => @mods, include: [:roles]
    end

    def show
        @mod = Mod.find_by(slug: params[:slug])
        render json: @mod, include: [:roles]
    end

    def create
        @mod = Mod.new(mod_params)

        if @mod.save
            render json: @mod
        else
            render json: {error: @mod.errors.messages }, status: 422
        end
    end

    def update
        @mod = Mod.find_by(slug: params[:slug])
        
        if @mod.update(mod_params)
            render json: @mod
        else
            render json: { error: @mod.errors.messages }, status: 422
        end
    end

    def destroy
        mod = Mod.find_by(slug: params[:slug])

        if mod.destroy
            head :no_content
        else
            render json: { errors: mod.errors.messages }, status: 422
        end
    end

    def destroy_role
        role = Role.find(params[:id])

        if role.destroy
            head :no_content
        else
            render json: { errors: role.errors.messages }, status: 422
        end
    end

    private

    def mod_params
        params.require(:mod).permit(:name, roles_attributes: [:id, :name, :team_name, :team_type])
    end
end
