class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :speech, foreign_key: true, index: true
      t.references :user, foreign_key: true, index:true
      t.string :content

      t.timestamps
    end
  end
end
