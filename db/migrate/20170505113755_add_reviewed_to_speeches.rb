class AddReviewedToSpeeches < ActiveRecord::Migration[5.0]
  def change
    add_column :speeches, :reviewed, :boolean, default: false
  end
end
