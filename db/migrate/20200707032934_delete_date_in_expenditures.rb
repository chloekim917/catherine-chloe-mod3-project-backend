class DeleteDateInExpenditures < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenditures, :date, :string
  end
end
