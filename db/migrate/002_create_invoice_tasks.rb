class CreateInvoiceTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_tasks do |t|
      t.integer :invoice_id
      t.integer :task_id
      t.numeric :hours
      t.numeric :price
      t.numeric :amount
    end
  end
end
