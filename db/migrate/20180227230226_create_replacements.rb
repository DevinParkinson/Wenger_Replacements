class CreateReplacements < ActiveRecord::Migration[5.1]
  def change
    create_table :replacements do |t|
      t.string :name
      t.string :age
      t.text :experience
      t.string :rating
      t.string :likelihood

      t.timestamps
    end
  end
end
