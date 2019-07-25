class CreateWolves < ActiveRecord::Migration[5.1]
  def change
    create_table :wolves do |t|
      t.string :photo
      t.integer :age
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
