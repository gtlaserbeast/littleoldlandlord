class AddAuthorToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :author, :string
  end
end
