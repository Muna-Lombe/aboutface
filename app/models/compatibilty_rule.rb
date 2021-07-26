class CompatibiltyRule < ApplicationRecord
  belongs_to :group_one, class_name: "ingredient_group"
  belongs_to :group_two, class_name: "ingredient_group"
end
