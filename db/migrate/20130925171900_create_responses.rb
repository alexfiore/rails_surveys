class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :choice

      t.timestamps
    end
    add_index :responses, :choice_id
  end
end
