class CreateItemsPrintJobs < ActiveRecord::Migration
  def self.up
    create_table :items_print_jobs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :items_print_jobs
  end
end
