class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|

      t.timestamps
     
    end
  end
end
