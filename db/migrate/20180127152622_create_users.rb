class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :email
      t.string :phone
      t.text :address
      t.integer :sex
      t.string :people_id
      t.integer :role, default: 0
      t.string :nation
      t.string :nationality
      t.text :avatar
      t.integer :year
      t.string :identification_number
      t.string :religion
      t.date :deleted_at
      t.references :school
      t.boolean :is_changed_register, default: 0

      t.timestamps
    end
    add_index :users, [:name, :role, :year]
  end
end
