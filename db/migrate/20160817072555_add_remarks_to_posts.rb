class AddRemarksToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :remarks, :string
  end
end
