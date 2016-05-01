class CreateInterestGroups < ActiveRecord::Migration
  def change
    create_table :interest_groups do |t|
      t.string :name
      t.string :description
      t.string :image
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
