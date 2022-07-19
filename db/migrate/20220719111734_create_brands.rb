class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :origin_country
      t.timestamps
    end
  end
end
