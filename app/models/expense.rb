class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :type
  belongs_to :user
end
