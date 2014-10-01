class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :category
      t.text :description
      t.string :state

      t.timestamps
    end
  end
end
