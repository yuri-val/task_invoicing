class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :number
      t.decimal :amount
      t.integer :status
      t.integer :author_id
    end
  end
end
