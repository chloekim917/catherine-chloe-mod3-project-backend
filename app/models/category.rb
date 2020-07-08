class Category < ApplicationRecord
    has_many :expenditures

    def cat_names
        @category_name = self.name
    end
end
