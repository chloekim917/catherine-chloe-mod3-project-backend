class AddDateInExpenditures < ActiveRecord::Migration[6.0]
  def change
    add_column :expenditures, :date, :integer
  end
end
