class CreatePublicacions < ActiveRecord::Migration[6.0]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.boolean :inactivo
      t.text :texto
      t.decimal :publication_date

      t.timestamps
    end
  end
end
