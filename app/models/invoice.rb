class Invoice < ActiveRecord::Base
  has_many :invoice_tasks
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  enum status: %i[draft sent paid]

  def title
    "Invoice ##{number} dated #{format_date(date)}"
  end

  def css_classes
    "invoice invoice-#{status}"
  end
end
