class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.date :due_day

      t.timestamps
    end
  end
end
