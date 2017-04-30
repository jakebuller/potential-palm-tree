class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages, id: false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :to
      t.string :from
      t.text :message
      t.timestamps
    end
  end
end
