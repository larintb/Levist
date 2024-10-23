class CreateUniforms < ActiveRecord::Migration[7.2]
  def change
    create_table :uniforms do |t|
      t.string :collection
      t.string :size
      t.string :color
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
