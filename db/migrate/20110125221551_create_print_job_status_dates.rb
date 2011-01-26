class CreatePrintJobStatusDates < ActiveRecord::Migration
  def self.up
    create_table :print_job_status_dates do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :print_job_status_dates
  end
end
