class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :url
      t.text :notes

      t.timestamps
    end
  end
end
