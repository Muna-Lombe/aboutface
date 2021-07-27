class IngredientGroup < ApplicationRecord
  # DO NOT DELETE ANY INGREDIENT GROUP
  has_many :ingredients
  # has_many :compatibility_rule_ones, foreign_key: :group_one_id, class_name:"CompatibilityRule"
  # has_many :compatibility_rule_twos, foreign_key: :group_two_id, class_name:"CompatibilityRule"

  # scope :rules, -> (ig) { joins("INNER JOIN compatibility_rules ON compatibility_rules.group_one_id = ingredient_groups.id OR compatibility_rules.group_two_id = ingredient_groups.id").where(ingredient_groups: {id: ig.id}) }
  
  def rules
    CompatibilityRule.joins("INNER JOIN ingredient_groups ON compatibility_rules.group_one_id = ingredient_groups.id OR compatibility_rules.group_two_id = ingredient_groups.id").where(ingredient_groups: {id: id})
  end

  def compatible_rules
    rules.where(compatibility_rules: {compatible: true})
  end

  def enhancement_rules
    rules.where(compatibility_rules: {enhancement: true})
  end
  # def self.compatible_compatibility_rules
  #   group1_cr = self.compatibility_rule_ones.where(compatible: true)
  #   group2_cr = self.compatibility_rule_twos.where(compatible: true)
  #   where(compatible: true)
  #   return group1_cr + group2_cr
  # end
end

# id, group_one_id, group_two_id, compatible, enhancement