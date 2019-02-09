class InvoiceTask < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :task, class_name: 'Issue', foreign_key: :task_id
  after_save :update_invoice_amount

  private

    def update_invoice_amount
      invoice.update(amount: invoice.invoice_tasks.sum(&:amount))
    end
end
