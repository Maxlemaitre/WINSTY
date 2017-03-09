class CreateSpeeches < ActiveRecord::Migration[5.0]
  def change
    create_table :speeches do |t|
      t.string :url
      t.integer :length_max
      t.string :description
      t.references :user, foreign_key: true, index:true

      t.timestamps
    end
  end
end
