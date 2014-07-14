class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false #just keeps values from being null
      t.string :email, null: false #prevents issues in future
      t.string :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true #index makes easily searcheable
    add_index :users, :username, unique: true #unique prevents duplicates
   end
end
