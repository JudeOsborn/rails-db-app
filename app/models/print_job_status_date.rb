class PrintJobStatusDate < ActiveRecord::Base
  belongs_to :print_job
  belongs_to :print_job_status
end
