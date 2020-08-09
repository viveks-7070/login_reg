class AddColUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :providers, :string
    add_column :users, :uid, :string
  end
end
