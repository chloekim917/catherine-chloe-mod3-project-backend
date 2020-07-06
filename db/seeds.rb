# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Expenditure.destroy_all

Category.create(name: 'Food', budget_amount:0 )
Category.create(name: 'Utility', budget_amount:0 )
Category.create(name: 'Entertainment', budget_amount:0)
Category.create(name: 'Housing', budget_amount:0)
Category.create(name: 'Transportation', budget_amount:0)
Category.create(name: 'Personal Care', budget_amount:0)
Category.create(name: 'Gift', budget_amount:0)
Category.create(name: 'Miscellaneous', budget_amount:0)
Category.create(name: 'Travel', budget_amount:0)
Category.create(name: 'Groceries', budget_amount:0)
Category.create(name: 'Medical', budget_amount:0)
Category.create(name: 'Pet Care', budget_amount:0)


