class Expenditure < ApplicationRecord
    belongs_to :category
    delegate :name, to: :category, prefix: true, allow_nil: true

    # def date_expense
    #     Expenditure.where(date: )
    # end
end
