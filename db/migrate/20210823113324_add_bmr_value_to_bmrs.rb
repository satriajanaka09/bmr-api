class AddBmrValueToBmrs < ActiveRecord::Migration[6.1]
  def change
    add_column :bmrs, :bmr_value, :decimal
  end
end
