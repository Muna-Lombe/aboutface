class AddColumnToCompatibilityRule < ActiveRecord::Migration[6.1]
  def change
    add_column :compatibility_rules, :compatible, :boolean, default: false
    add_column :compatibility_rules, :enhancement, :boolean, default: false
  end
end
