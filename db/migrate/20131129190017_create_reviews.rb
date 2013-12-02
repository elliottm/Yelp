class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
