class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :genre
      t.string :body
      t.timestamps
    end
  end
end
