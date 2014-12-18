class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body

      belongs_to :article
      t.timestamps
    end
  end
end
