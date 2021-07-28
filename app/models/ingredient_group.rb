class IngredientGroup < ApplicationRecord
  # DO NOT DELETE ANY INGREDIENT GROUP
  has_many :ingredients
  # has_many :compatibility_rule_ones, foreign_key: :group_one_id, class_name:"CompatibilityRule"
  # has_many :compatibility_rule_twos, foreign_key: :group_two_id, class_name:"CompatibilityRule"
  
  def rules
    CompatibilityRule.joins("INNER JOIN ingredient_groups ON compatibility_rules.group_one_id = ingredient_groups.id OR compatibility_rules.group_two_id = ingredient_groups.id").where(ingredient_groups: {id: id})
  end

  def compatible_rules
    rules.where(compatibility_rules: {compatible: true})
  end

  def enhancement_rules
    rules.where(compatibility_rules: {enhancement: true})
  end
end
