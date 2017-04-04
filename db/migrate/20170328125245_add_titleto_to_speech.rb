class AddTitletoToSpeech < ActiveRecord::Migration[5.0]
  def change
    add_column :speeches, :title, :string
  end
end
