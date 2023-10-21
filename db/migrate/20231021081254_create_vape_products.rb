class CreateVapeProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :vape_products do |t|
      t.string :name
      t.float :price
      t.text :desc
      t.string :category

      t.timestamps
    end
  end
end
