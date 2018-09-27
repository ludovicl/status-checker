class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :url
      t.string :text_on_page
      t.integer :number_of_occurrences
      t.integer :load_waiting_sec

      t.timestamps
    end
  end
end
