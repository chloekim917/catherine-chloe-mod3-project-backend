# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Expenditure.destroy_all

food = Category.create(name: 'Food', budget_amount:0 )
utility = Category.create(name: 'Utility', budget_amount:0 )
entertainment = Category.create(name: 'Entertainment', budget_amount:0)
housing = Category.create(name: 'Housing', budget_amount:0)
transportation = Category.create(name: 'Transportation', budget_amount:0)
personal_care = Category.create(name: 'Personal Care', budget_amount:0)
gift= Category.create(name: 'Gift', budget_amount:0)
misc = Category.create(name: 'Miscellaneous', budget_amount:0)
travel = Category.create(name: 'Travel', budget_amount:0)
groceries = Category.create(name: 'Groceries', budget_amount:0)
medical = Category.create(name: 'Medical', budget_amount:0)
pet_care = Category.create(name: 'Pet Care', budget_amount:0)

Expenditure.create(date: "July 1, 2020", category_id: food.id, detail:"bubble tea", amount: 5.0)
Expenditure.create(date: "July 1, 2020", category_id: utility.id, detail:"PSEG bill", amount: 50.0)
Expenditure.create(date: "July 1, 2020", category_id:entertainment.id, detail:"Ballet tickets", amount: 500.0)
Expenditure.create(date: "July 1, 2020", category_id:housing.id, detail:"Monthly rent", amount: 1400.0)
Expenditure.create(date: "July 1, 2020", category_id:entertainment.id, detail:"Tribeca Film Festival tix", amount: 25.0)
Expenditure.create(date: "July 1, 2020", category_id: food.id, detail:"In 'n Out", amount: 15.0)
Expenditure.create(date: "July 1, 2020", category_id:utility.id, detail:"Electricity bill", amount: 65.0)
