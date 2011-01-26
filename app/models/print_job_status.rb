class PrintJobStatus < ActiveRecord::Base
  set_table_name 'print_job_status'
  has_many :print_job_status_dates
end
