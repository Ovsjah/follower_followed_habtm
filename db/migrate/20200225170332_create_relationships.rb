class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships, id: false do |t|
      t.bigint :follower_id
      t.bigint :followed_id
    end
    add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
