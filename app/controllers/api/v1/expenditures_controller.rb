class Api::V1::ExpendituresController < ApplicationController
    def index
        expenditures = Expenditure.all
        # render json: expenditures
        options = {include: :category}
        render json: ExpenditureSerializer.new(expenditures)
    end

    def by_date
        date = params[:q]
        expenditures = Expenditure.where(date: date)
        # options = {include: :category}
        render json: expenditures, include: :category
    end

    def create
        expenditure = Expenditure.new(expenditure_params)
        expenditure.save!
        # render json: expenditure
        options = {include: :category}
        render json: ExpenditureSerializer.new(expenditure)
    end

    def update
        expenditure = Expenditure.find(params[:id])
        expenditure.update!(expenditure_params)
        # render json: expenditure
        options = {include: :category}
        render json: ExpenditureSerializer.new(expenditure)
    end

    def destroy
        expenditure = Expenditure.find(params[:id])
        expenditure.destroy!
        # render json: {}
        options = {include: :category}
        render json: ExpenditureSerializer.new(expenditure)
    end

    private

    def expenditure_params
        params.require(:expenditure).permit(:date, :category_id, :description, :amount)
    end
end
