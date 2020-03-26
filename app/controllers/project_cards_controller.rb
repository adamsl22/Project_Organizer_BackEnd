class ProjectCardsController < ApplicationController

    def create
        @project_card = ProjectCard.new(project_card_params)
    
        if @project_card.save
          render json: @project_card.to_json
        else
          render json: ("Project creation unsuccessful").to_json
        end
    end

    def update
        project_card = ProjectCard.find(params[:id])
        render json: project_card.update(project_card_params)
    end

    def delete
        project_card = ProjectCard.find(params[:id])
        project_card.delete
    end

    private

    def project_card_params(*args)
        params.require(:project_card).permit(*args)
    end

end
