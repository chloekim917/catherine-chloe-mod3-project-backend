class Api::V1::ExpendituresController < ApplicationController
    def index
        expenditures = Expenditure.all
        render json: expenditures
    end

    def create
        expenditure = Expenditure.new(expenditure_params)
        expenditure.save!
        render json: expenditure
    end

    def update
        expenditure = Expenditure.find(params[:id])
        expenditure.update!(expenditure_params)
        render json: expenditure
    end

    def destroy
        expenditure = Expenditure.find(params[:id])
        expenditure.destroy!
        render json: {}
    end

    private

    def expenditure_params
        params.require(:expenditure).permit(:date, :category_id, :detail, :amount)
    end
end
