class CreateBmrs < ActiveRecord::Migration[6.1]
  def change
    create_table :bmrs do |t|
      t.decimal :weight
      t.decimal :height
      t.integer :age

      t.timestamps
    end
  end
end
