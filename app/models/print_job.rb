class PrintJob < ActiveRecord::Base
  set_table_name 'print_jobs_new'
  has_many :items_print_jobs
  has_many :print_job_comments
  belongs_to :printer, :foreign_key=>'printer_id'
  belongs_to :currency
end
