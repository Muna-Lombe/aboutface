class AddColumnToCompatibilityRules < ActiveRecord::Migration[6.1]
  def change
    add_column :compatibility_rules, :reason, :text
    add_column :compatibility_rules, :rating, :integer
  end
end
