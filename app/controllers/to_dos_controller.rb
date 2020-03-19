class ToDosController < ApplicationController

    def create
        render json: ToDo.create(to_do_params)
    end

    def update
        to_do = ToDo.find(params[:id])
        render json: to_do.update(to_do_params)
    end

    def delete
        to_do = ToDo.find(params[:id])
        to_do.delete
    end

    private

    def to_do_params(*args)
        params.require(:to_do).permit(*args)
    end

end
