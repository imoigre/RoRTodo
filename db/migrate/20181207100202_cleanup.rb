class Cleanup < ActiveRecord::Migration[5.2]
  def change
    drop_table :taskgroups
    drop_table :task_groups
    drop_table :groups
  end
end
