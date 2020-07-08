class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :budget_amount
end
