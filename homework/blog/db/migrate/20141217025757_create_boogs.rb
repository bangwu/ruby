class CreateBoogs < ActiveRecord::Migration
  def change
    create_table :boogs do |t|

      t.timestamps
    end
  end
end
