class CompatibilityRule < ApplicationRecord
  belongs_to :group_one, class_name: "IngredientGroup"
  belongs_to :group_two, class_name: "IngredientGroup"
end
