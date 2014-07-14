class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :body
      t.belongs_to :user, index: true


      t.timestamps null: false
    end
  end
end
