class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.references :follower, index: true, null: false
      t.references :followeded_user, index: true, null: false

      t.timestamps
    end
  end
end
