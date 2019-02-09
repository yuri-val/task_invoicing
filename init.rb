Redmine::Plugin.register :task_invoicing do
  name 'Task Invoicing plugin'
  author 'Yuri Valigursky'
  description 'This is a plugin for Redmine to invoice your tasks.'
  version '0.0.1'
  url 'https://github.com/yuri-val/task_invoicing'
  author_url 'https://github.com/yuri-val'

  menu :application_menu, :invoices, { controller: :invoices, action: :index }, caption: :label_invoices_plural, after: :issues

end
