class RemoveColumnFromCompatibilityRules < ActiveRecord::Migration[6.1]
  def change
    remove_column :compatibility_rules, :enhancement, :string
  end
end
