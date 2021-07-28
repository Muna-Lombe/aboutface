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

products = [
	"Advanced Night Repair Eye Supercharged Complex",
	"Advanced Night Repair Synchronized Multi-Recovery Complex Serum",
	"The Inkey List - Glycolic Acid Toner",
	"SkinCeuticals - C E FERULIC® WITH 15% L-ASCORBIC ACID",
	"The Ordinary - Niacinamide 10% + Zinc 1%",
	"The Ordinary - AHA 30% + BHA 2% Peeling Solution"
]




#Advanced_Night_Repair_Eye_Supercharged_Complex= [
#
#	"Methyl Trimethicone" ," Water-Aqua-Eau" , "Bifida Ferment Lysate" , #"Dimethicone" , "Dimethicone/Vinyl Dimethicone Crosspolymer" , "Propanediol" , #"Petrolatum" , "Sucrose" , "Algae Extract" , "Hypnea Musciformis (Algae) #Extract" , "Acrylamide/Sodium Acryloyldimethyltaurate Copolymer" , "Butylene #Glycol" , "Yeast Extract-Faex-Extrait De Levure" , "Tripeptide-32" , "Sodium #Hyaluronate" , "Lactobacillus Ferment" , "Sodium Rna" , "Citrullus Vulgaris #(Watermelon) Fruit Extract" , "Poria Cocos Sclerotium Extract" , "Lens #Esculenta (Lentil) Fruit Extract" , "Pyrus Malus (Apple) Fruit Extract" , #"Anthemis Nobilis (Chamomile) Flower Extract" , "Narcissus Tazetta Bulb #Extract" , "Caffeine" , "Sodium Pca" , "Tocopheryl Acetate" , #"Phytosphingosine" , "Trehalose" , "Glycine Soja (Soybean) Seed Extract" , #I"sopropyl Jojobate" , "Betula Alba (Birch) Extract", "Peg/Ppg-18/18 #Dimethicone" , "Ethylhexylglycerin" , "Gelidiella Acerosa Extract" , #"Tromethamine" , "Polysorbate 80" , "Artemia Extract" , "Hydrolyzed Algin" , #"Isohexadecane" , "Jojoba Alcohol" , "Jojoba Esters" , "Glycerin" , "Acrylates/#C10-30 Alkyl Acrylate Crosspolymer" , "Hydrogenated Lecithin" , "Polysorbate #40" , "Caprylyl Glycol" , "Sodium Lactate" , "Lecithin" , "Bht" ," Potassium #Sorbate" , "Phenoxyethanol" , "Iron Oxides (Ci 77491)" , I"ron Oxides (Ci #77492) ILN45118" 
#]




















# ingredient_groups.each do |ig|
# 	IngredientGroup.create(name:ig)
# end
id = 1
# ingreds.each do |ing|
# 	ingredient = Ingredient.new(name: ing)
# 	ingredient["ingredient_group_id"] = id
# 	ingredient.save
# 	id += 1
# end
ingredients = Ingredient.all

products.each do |name|
	product = Product.new(name: name)
	product["brand"] = ["SKII","ESTE LAUDER", "MAC", "GUCCI"].sample
	product.save
	id = 1
	5.times do
		pi = ProductIngredient.new()
		ig = Ingredient.find(id)
		pi["product_id"] = product.id
		pi["ingredient_id"] = ig.id
		pi["rank"] = [1,2,3,4,5,6,7,8,9].sample
		pi.save
		id += 1
	end
end