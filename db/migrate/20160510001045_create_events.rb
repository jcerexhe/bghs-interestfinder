class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :interest_group, index: true, foreign_key: true
      t.string :name
      t.datetime :time
      t.datetime :date
      t.text :description
      t.string :location

      t.timestamps null: false
    end
  end
end
