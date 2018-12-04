class CreateTaskgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :taskgroups do |t|

      t.timestamps
    end
  end
end
