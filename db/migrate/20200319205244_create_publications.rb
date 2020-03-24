class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :name
      t.text :texto
      t.boolean :inactivo

      t.timestamps
    end
  end
end
