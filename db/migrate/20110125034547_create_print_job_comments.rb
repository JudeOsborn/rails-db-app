class CreatePrintJobComments < ActiveRecord::Migration
  def self.up
    create_table :print_job_comments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :print_job_comments
  end
end
