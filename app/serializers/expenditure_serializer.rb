class ExpenditureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :detail, :amount, :category
  belongs_to :category
end
