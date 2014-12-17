class AddColumnBoogToBoog < ActiveRecord::Migration
  def change
    add_column :boogs, :title, :string
    add_column :boogs, :body, :string
  end
end
