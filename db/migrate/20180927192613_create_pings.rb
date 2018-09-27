class CreatePings < ActiveRecord::Migration[5.2]
  def change
    create_table :pings do |t|
      t.datetime :pinged_at
      t.boolean :is_up
      t.references :service, index: true, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
