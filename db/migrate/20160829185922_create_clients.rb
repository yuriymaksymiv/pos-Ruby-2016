class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.text :client
      t.text :databird
      t.text :group
      t.text :phone
      t.text :email
      t.text :address
      t.text :city
      t.text :country
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
