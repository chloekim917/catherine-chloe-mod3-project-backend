class AddBudgetAmountToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :budget_amount, :float
    
  end
end
