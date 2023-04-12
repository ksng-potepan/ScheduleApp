class AddAllDayToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :all_day, :boolean
  end
end
