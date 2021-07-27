# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ingredient_groups = [
  "Alpha-hydroxy acids (AHAs)",
	"Polyhydroxy acids",
  "Beta-hydroxy acid (salicylic acid)",
	"Vitamin A",
	"Vitamin C",
	"Vitamin Bs / retinol", 
	"CoQ10",
	"Hyaluronic Acids",
	"Vitamin E"
	]

AHAs = [
  # "lactic acid / 2-hydroxypropionic acid",
  # "glycolic acid / Hydroxyacetic Acid",
  # "malic acid",
  # "citric acid",
  # "tartaric acid / Dihydroxysuccinic Acid",
  # "Mandelic acid",
  # "Malic Acid / Monohydroxysuccinic Acid",
  # "Hydroxycaprylic Acid",
  # "Hydroxypropionic Acid",
  "Hydroxysuccinic Acid"
]

Polyhydroxy_acids = [
	# "Gluconolactone / gluconic acid",
	# "Galactose",
	"Lactobionic acid"
]

Beta_hydroxy_acid = [
	# "salicylic acid", 
	# "salicylate",
	# "sodium salicylate", 
	# "willow extract / Salix alba",
	# "beta hydroxybutanoic acid",
	# "tropic acid",
	"trethocanic acid"
]

Vitamin_A_Retinoids = [
  # "Retinal/Retinaldehyde",
	# "Retinyl palmitate",
	# "Retinol", 
	# "Retinoic Acid",
	# "Tretinoin,"
	# "Tazarotene", 
	# "Isotretinoin", 
	"Adapalene"
]

Vitamin_C = [
	# "L-ascorbic acid",
	# "sodium ascorbyl phosphate", 
	# "ascorbyl palmitate", 
	# "retinyl ascorbate", 
	# "tetrahexyldecyl ascorbate", 
	# "magnesium ascorbyl phosphate",
	# "Ascorbyl Tetra-Isopalmitate (VC-IP)",
	# "Ascorbyl Glucoside (AA-2G)",
	# "Ascorbyl 2-Phosphate 6-Palmitate (APPS)",
	"3-O-Ethyl Ascorbate"
]

Vitamin_Bs = [
	# "B3 niacinamide",
	# "B5 pantothenic acid",
	"B12 cobalamin"
]

CoQ10 = [
# "ubiquinone",
# "Coenzyme Q10",
"CoQ10"
]


Hyalurionic_Acids = [
	# "Hydrolysed hyaluronic acid",
	# "Sodium acetylated hyaluronate",
	"Sodium hyaluronate"
]

Vitamin_E = [
	# "Tocopheryl Acetate",
	# "Tocopheryl Glucoside",
	# "Tocopheryl Linoleate",
	# "Tocopheryl Linoleate/Oleate",
	# "Tocopheryl Nicotinate",
	# "Tocopheryl Succinate",
	# "Potassium Ascorbyl Tocopheryl Phosphate",
	# "Sodium Tocopheryl Phosphate",
	"Tocopherol Phosphate"
]

ingreds = [
	"Hydroxysuccinic Acid",
	"Lactobionic acid",
	"trethocanic acid",
	"Adapalene",
	"3-O-Ethyl Ascorbate",
	"B12 cobalamin",
	"CoQ10",
	"Sodium hyaluronate",
	"Tocopherol Phosphate"
]

# ingredient_groups.each do |ig|
# 	IngredientGroup.create(name:ig)
# end
id = 1
ingreds.each do |ing|
	ingredient = Ingredient.new(name: ing)
	ingredient["ingredient_group_id"] = id
	ingredient.save
	id += 1

end