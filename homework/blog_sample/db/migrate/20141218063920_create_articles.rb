class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      has_many :comments
      t.timestamps
    end
  end
end
