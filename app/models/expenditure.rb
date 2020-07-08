class Expenditure < ApplicationRecord
    belongs_to :category
    delegate :name, to: :category, prefix: true, allow_nil: true
    # def category_name
    #     @all_categories.map {|category| category.expenditure === self}
    # end
end
