class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :description
      t.text :bio

      t.timestamps
    end
  end
end
