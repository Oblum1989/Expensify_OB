class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.decimal :amount
      t.string :concept
      t.references :category, foreign_key: true
      t.references :type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
