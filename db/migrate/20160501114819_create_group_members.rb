class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :interest_group, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
