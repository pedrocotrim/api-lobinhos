class CreateAdoptions < ActiveRecord::Migration[5.1]
  def change
    create_table :adoptions do |t|
      t.references :wolf, foreign_key: true
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
