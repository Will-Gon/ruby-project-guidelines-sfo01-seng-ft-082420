class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :price_range
      t.integer :rating

      t.timestamps
    end
  end
end
