class ExpenditureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :description, :amount, :category
  belongs_to :category
end
