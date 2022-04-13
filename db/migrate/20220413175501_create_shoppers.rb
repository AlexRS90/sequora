class CreateShoppers < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppers do |t|
      t.string :name, limit: 150
      t.string :email, limit: 100
      t.string :cif, limit: 50

      t.timestamps
    end
  end
end
