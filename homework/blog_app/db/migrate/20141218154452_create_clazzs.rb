class CreateClazzs < ActiveRecord::Migration
  def change
    create_table :clazzs do |t|

      has_many :students
      t.timestamps
    end
  end
end
