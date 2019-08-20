class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :uid
      t.string :email
      t.string :password_digest
      t.string :title
      t.integer :exp

      t.timestamps
    end
  end
end
