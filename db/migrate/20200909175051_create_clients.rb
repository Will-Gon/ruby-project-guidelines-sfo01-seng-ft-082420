class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :job_description
      t.integer :budget

      t.timestamps
    end
  end
end
