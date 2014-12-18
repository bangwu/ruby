class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
     
      belongs_to :clazz
      t.timestamps
    end
  end
end
