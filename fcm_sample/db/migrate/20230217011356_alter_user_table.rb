class AlterUserTable < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :name, :string
    add_column :users, :uid, :string
    add_column :users, :token, :string
  end

  def down
    remove_column :users, :name, :string
    remove_column :users, :uid, :string
    remove_column :users, :token, :string
  end
end
