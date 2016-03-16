class CreateRailsnotes < ActiveRecord::Migration
  def change
    create_table :railsnotes do |t|
      t.string :title
      t.text :content
      t.text :JS_Equilavent

      t.timestamps null: false
    end
  end
end
