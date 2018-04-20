class CreateChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :changes do |t|
      t.belongs_to :subject, polymorphic: true
      t.json :changed_values
      t.timestamp :changed_at

      t.timestamp :created_at
    end
  end
end
