class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.boolean :inactivo
      t.text :texto
      t.date :publication_date

      t.timestamps
    end
  end
end
