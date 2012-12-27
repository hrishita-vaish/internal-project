class CreateTabpositions < ActiveRecord::Migration
  def change
    create_table :tabpositions do |t|
      t.integer :position

      t.timestamps
    end
  end
end
