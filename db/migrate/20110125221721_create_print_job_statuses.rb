class CreatePrintJobStatuses < ActiveRecord::Migration
  def self.up
    create_table :print_job_statuses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :print_job_statuses
  end
end
