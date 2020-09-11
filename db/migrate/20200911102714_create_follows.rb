class CreateFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :follows do |t|
      t.references :followable, polymorphic: true
      t.timestamps
    end
  end
end
