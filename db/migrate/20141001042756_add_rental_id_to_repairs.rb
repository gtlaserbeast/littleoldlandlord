class AddRentalIdToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :rental_id, :integer
  end
end
