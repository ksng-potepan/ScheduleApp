class RenameStratDateColomnTostartDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :strat_date, :start_date
  end
end
