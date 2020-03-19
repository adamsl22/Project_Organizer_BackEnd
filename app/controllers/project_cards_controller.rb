class ProjectCardsController < ApplicationController

    def create
        render json: ProjectCard.create(project_card_params)
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
