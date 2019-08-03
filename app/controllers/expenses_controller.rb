class ExpensesController < ApplicationController
  def index
    @tab = :expenses
    @categories = Category.all.order(name: :desc)
    @types = Type.all.order(name: :desc)
  end
  
end
