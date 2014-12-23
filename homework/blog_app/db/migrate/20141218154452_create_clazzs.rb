class CreateClazzs < ActiveRecord::Migration
  def change
    create_table :clazzs do |t|

      t.timestamps
    end
  end
end
