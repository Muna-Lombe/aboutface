class IngredientGroup < ApplicationRecord
  # DO NOT DELETE ANY INGREDIENT GROUP
  has_many :ingredients
  has_many :compatibility_rule_ones, foreign_key: :group_one_id, class_name:"CompatibilityRule"
  has_many :compatibility_rule_twos, foreign_key: :group_two_id, class_name:"CompatibilityRule"
  
  def compatible_compatibility_rules
    group1_cr = self.compatibility_rule_ones.where(compatible: true)
    group2_cr = self.compatibility_rule_twos.where(compatible: true)
    return group1_cr + group2_cr
  end
end
