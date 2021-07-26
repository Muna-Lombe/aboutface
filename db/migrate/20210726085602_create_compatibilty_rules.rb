class CreateCompatibiltyRules < ActiveRecord::Migration[6.1]
  def change
    create_table :compatibilty_rules do |t|
      t.integer :group_one_id, foreign_key: true
      t.integer :group_two_id, foreign_key: true

      t.timestamps
    end
  end
end
