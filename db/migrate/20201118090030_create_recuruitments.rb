class CreateRecuruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recuruitments do |t|
      t.string :genre
      t.string :body
      t.string :time
      t.string :salary
      t.string :etc
      t.string :welcome
      t.timestamps
    end
  end
end
