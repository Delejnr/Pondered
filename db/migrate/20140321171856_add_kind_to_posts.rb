class AddKindToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :Kind, :string
  end
end
