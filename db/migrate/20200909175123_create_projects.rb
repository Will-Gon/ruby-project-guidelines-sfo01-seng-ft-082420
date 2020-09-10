class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :company_id
      t.integer :client_id

      t.timestamps
    end
  end
end
