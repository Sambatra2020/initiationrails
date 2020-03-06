class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.string :sexe

      t.timestamps
    end
  end
end
