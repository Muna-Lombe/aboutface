class RenameTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :compatibilty_rules, :compatibility_rules
  end
end
