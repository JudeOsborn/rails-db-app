class PrintJob < ActiveRecord::Base
  set_table_name 'print_jobs_new'
  has_many :items_print_jobs
  has_many :print_job_comments
  has_many :print_job_status_dates, :foreign_key => 'print_jobs_id'
  belongs_to :printer, :foreign_key => 'printer_id'
  belongs_to :currency
end
