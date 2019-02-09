class InvoicesController < ApplicationController

  def index
    scope = Invoice.all

    @invoice_count = scope.count
    @invoice_pages = Paginator.new @invoice_count, per_page_option, params['page']
    @invoices = scope.limit(@invoice_pages.per_page).offset(@invoice_pages.offset).to_a
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
