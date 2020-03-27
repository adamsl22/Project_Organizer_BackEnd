class ProjectCardsController < ApplicationController

    def create
        render json: ProjectCard.create(project_card_params);
    end

    def index
        render json: ProjectCard.all
    end

    def update
        project_card = ProjectCard.find(params[:id])
        render json: project_card.update(project_card_params)
    end

    def destroy
        project_card = ProjectCard.find(params[:id])
        project_card.delete
    end

    private

    def project_card_params
        params.require(:project_card).permit(:name, :logo, :description, :status, :repo_link, :notes, :user_id, :color)
    end
end
