class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def create
        category = Category.new(category_params)
        category.save!
        render json: category
    end

    def update
        category = Category.find(params[:id])
        category.update!(category_params)
        render json: category
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy!
        render json: {}
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end


end
