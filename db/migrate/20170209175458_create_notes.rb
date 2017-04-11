class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.text :links

      t.timestamps
    end
  end
end
