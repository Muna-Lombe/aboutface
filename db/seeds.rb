require 'csv'
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def unpack_csv_and_seed_CR_table
	puts "unpacking csv............."
	csv_text = File.read(Rails.root.join('lib', 'assets', 'seed_data', 'Skincare_Compatibility.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
	puts "---------------------------------------------------------------"
	puts "seed_CR_table......"

	cr = []
	csv.each do |row|
		cr << row.to_hash
	end
	count = 1



	cr.each do|r|
		g1 = IngredientGroup.search_by_name(r["name"]).first

		g2 = IngredientGroup.search_by_name(r["compared_to"]).first
		rule = CompatibilityRule.new()

		rule.group_one_id = g1.id

		rule.group_two_id = g2.id

		bool = (r["compatible"].downcase == "true")

		rule.compatible = bool

		rule.reason = r["text"]

		rule.rating = r["rating"]

		rule.save

		p "#{count}. #{rule}"
		count += 1

	end
	puts "Done! Compatibility_Rule table has #{CompatibilityRule.count} instances"

end
#
#
#
################################## DO NOT DELETE FOR NOW ##########################################

#terminal commands to use:
#IngredientGroup.search_by_name("b h a")

ing_grp = [
	["Alpha-hydroxy acids (AHAs)",
		[
			"lactic acid / 2-hydroxypropionic acid",
			"glycolic acid / Hydroxyacetic Acid",
			"malic acid",
			"citric acid",
			"tartaric acid / Dihydroxysuccinic Acid",
			"Mandelic acid",
			"Malic Acid / Monohydroxysuccinic Acid / Hydroxysuccinic Acid",
			"Hydroxycaprylic Acid",
		]
	],
	["Polyhydroxy acids (PHAs)",
		[
			"PHA / Polyhydroxy acids",
			"Gluconolactone / gluconic acid",
			"Galactose",
			"Lactobionic acid"
		]
	],
	["Minerals",
		[
			"Zinc oxide",
			"Titanium dioxide",
			"Selenium",
			"Mica",
			"Iron oxide"
		]
	],
	["Beta-hydroxy acid (BHAs)",
		[
			"BHA / Beta hydroxy acids",
			"salicylic acid", 
			"salicylate",
			"sodium salicylate", 
			"willow extract / Salix alba",
			"beta hydroxybutanoic acid",
			"tropic acid",
			"trethocanic acid",
			"3-Hydroxypropionic Acid",
			"betaine salicylate"
		]

	],
	["Vitamin A",
		[
			"Vitamine A",
      "Retinal / Retinaldehyde",
      "Retinyl palmitate",
      "Retinol", 
      "Retinoic Acid",
      "Tretinoin",
      "Tazarotene", 
      "Isotretinoin", 
      "Adapalene"
		]
	],
	["Vitamin C",
		[
	    "Vitamin C",
      "L-ascorbic acid",
      "sodium ascorbyl phosphate", 
      "ascorbyl palmitate", 
      "retinyl ascorbate", 
      "tetrahexyldecyl ascorbate", 
      "magnesium ascorbyl phosphate",
      "Ascorbyl Tetra-Isopalmitate (VC-IP)",
      "Ascorbyl Glucoside (AA-2G)",
      "Ascorbyl 2-Phosphate 6-Palmitate (APPS)",
      "3-O-Ethyl Ascorbate"
    ]
	],
	["Vitamin B",
		[
		  "B5 / pantothenic acid / panthenol",
			"B12 / cobalamin"
		]
	],
	["Vitamin B3 / niacinamide",
		["Vitamin B3 / niacinamide / nicotinamide"]
	],
	["Hyaluronic Acids",
    [
      "Hyalurionic acid / HA",
    	"Hydrolysed hyaluronic acid",
    	"Sodium acetylated hyaluronate",
    	"Sodium hyaluronate",
      "Glycoaminoglycane",
      "Glycoaminoglycan",
      "Hyaluran",
      "Hyaluronan",
      "Hyaluronate Sodium",
      "Hylan"
    ]
	],
	["Vitamin E",
		[
		  "Vitamin E",
		  "Tocopheryl Acetate",
		  "Tocopheryl Glucoside",
		  "Tocopheryl Linoleate",
		  "Tocopheryl Linoleate/Oleate",
		  "Tocopheryl Nicotinate",
		  "Tocopheryl Succinate",
		  "Potassium Ascorbyl Tocopheryl Phosphate",
		  "Sodium Tocopheryl Phosphate",
			"Tocopherol Phosphate"
		]
	],
	["Benzoyl Peroxide",
		["Benzoyl Peroxide"]
	],
	["Hydroquinone",
		[
			"Hydroquinone"
		]
	],
	["Azelaic Acid",
		["Azelaic Acid"]
	],
	["Kojic Acid",
		["Kojic Acid"]
	],
	["Ferulic Acid",
		["Ferulic Acid"]

	],
	["Copper peptides",
		["Copper peptides"]
	],
	["Bakuchiol",
		["Bakuchiol"]
	],
	["General peptides",
		[
			"X-50 Myocept",
			"Trifluoroacetyl tripeptide-2",
			"Trylagen",
			"Argireline",
			"Palmitoyl tetrapeptide-28",
			"Palmitoyl Tripeptide-38",
			"Syn-Ake, XEP-30",
			"Matrixyl-3000",
			"Palmitoyl Pentapeptide-4",
			"Palmitoyl Oligopeptide-7"
		]

	],
	["Arbutin",
		[
			"Arbutin",
			"Alpha-Arbutin / α-Arbutin",
			"Beta-Arbutin / β-Arbutin"
    ]
	],
	["Mushrooms",
		[
			"Shiitake (Lentinula edodes)",
			"reishi mushrooms (Ganoderma lucidum)",
			"chaga (Inonotus obliquus)",
			"maitake (Grifola frondosa)",
			"antrodia (Antrodia cinnamomea)",
			"Cordyceps (Cordyceps sinensis)"
		]			
	],
	["Caffeine",
		[
			"Caffeine",
			"Caffeic acid",
			"Paullinia cupana extract"
		]

	],
	["Ceramide",
		[
			"ceramide AP / ceramide 6-II / ceramide 6 / α-hydroxy-N-stearoylphytosphingosine",
			"Ceramide EOS / Ceramide 1",
			"ceramide EOP / ceramide 9",
			"ceramide NG",
			"ceramide NP /  ceramide 3 / N-stearoyl phytosphingosine",
			"ceramide NS",
			"Phytosphinosine",
			"sphingosine."
		]

	],
	["Other",
		[
      "Ubiquinone",
      "Coenzyme Q10",
      "CoQ10",
      "Palmitic acid  / Palm oil  / Acid Hexadecanoic / Acid Palmitic / Calcium Palmitate / Hexadecanoic Acid / Palmitate Calcium / Palmitate Sodium / Palmitic Acid / Sodium Palmitate",
      "Stearic acid / Octadecanoic acid",
      "oleyl stearate /  oleic acid / oleyl oleate or tallow",
      "LA / Linoleic acid / omega-6 fatty acid / 18:2 cis-9,12",
		  "Egcg / Epigallocatechin gallate  / green tea"
		]
	]
]

def add_ingredient_groups_and_ingredients(ing_grp)
	p "Adding Ingredient groups......"
	ing_grp.each do |ig|
		name = ig[0]
		ings = ig[1]
		igrp = IngredientGroup.create(name: name)
		ings.each do |ing|
			p "Adding Ingredients......"

			i = Ingredient.new(name: ing, ingredient_group_id: igrp.id)
			i.save
		end
	end
end


#
#["SK-II","ESTEE LAUDER", "The Inkey List" "The Ordinary", "COSRX", "SkinCeuticals"]
products = [
	["Advanced Night Repair Eye Supercharged Complex","ESTEE LAUDER",	
		[
			"Methyl Trimethicone" ," Water" , "Bifida Ferment Lysate" , "Dimethicone" , "Dimethicone/Vinyl Dimethicone Crosspolymer" , 	"Propanediol" , "Petrolatum" , "Sucrose" , "Algae Extract" , "Hypnea Musciformis (Algae) Extract" , "Acrylamide/Sodium 	Acryloyldimethyltaurate Copolymer" , "Butylene Glycol" , "Yeast Extract-Faex-Extrait De Levure" , "Tripeptide-32" , "Sodium 	Hyaluronate" , "Lactobacillus Ferment" , "Sodium Rna" , "Citrullus Vulgaris (Watermelon) Fruit Extract" , "Poria Cocos Sclerotium 	Extract" , "Lens Esculenta (Lentil) Fruit Extract" , "Pyrus Malus (Apple) Fruit Extract" , "Anthemis Nobilis (Chamomile) Flower 	Extract" , "Narcissus Tazetta Bulb Extract" , "Caffeine" , "Sodium Pca" , "Tocopheryl Acetate" , "Phytosphingosine" , "Trehalose" , 	"Glycine Soja (Soybean) Seed Extract" , "Isopropyl Jojobate" , "Betula Alba (Birch) Extract", "Peg/Ppg-18/18 Dimethicone" , 	"Ethylhexylglycerin" , "Gelidiella Acerosa Extract" , "Tromethamine" , "Polysorbate 80" , "Artemia Extract" , "Hydrolyzed Algin" , 	"Isohexadecane" , "Jojoba Alcohol" , "Jojoba Esters" , "Glycerin" , "Acrylates/#C10-30 Alkyl Acrylate Crosspolymer" , "Hydrogenated 	Lecithin" , "Polysorbate 40" , "Caprylyl Glycol" , "Sodium Lactate" , "Lecithin" , "Bht" ," Potassium Sorbate" , "Phenoxyethanol" 	, "Iron Oxides (Ci 77491)" , "Iron Oxides (Ci #77492) ILN45118" 
		]
	],
	["Advanced Night Repair Synchronized Multi-Recovery Complex Serum","ESTEE LAUDER",
		[
			"water", "Bifida Ferment Lysate", "Peg-8", "Propanediol", "Bis-Peg-18 Methyl Ether Dimethyl Silane", "Methyl Gluceth-20", "Glycereth-26", "Peg-75", "Butylene Glycol", "Adansonia Digitata Seed Extract", "Tripeptide-32", "Sodium Hyaluronate", "Yeast Extract / Faex / Extrait De Levure", "Lactobacillus Ferment", "Cola Acuminata (Kola) Seed Extract", "Anthemis Nobilis (Chamomile) Flower Extract", "Hydrolyzed Algin", "Pantethine", "Caffeine", "Lecithin", "Sodium Rna", "Bisabolol", "Squalane", "Glycerin", "Oleth-3 Phosphate", "Caprylyl Glycol", "Oleth-3", "Oleth-5", "Choleth-24", "Hydrogenated Lecithin", "Jojoba Wax Peg-120 Esters", "Ceteth-24", "Tocopheryl Acetate", "Carbomer", "Triethanolamine", "Tetrasodium Edta", "Bht", "Xanthan Gum", "Potassium Sorbate", "Disodium Edta", "Phenoxyethanol", "Red 4 (Ci 14700)", "Yellow 5 (Ci 19140)"
		]
	],
	["Glycolic Acid Toner","The Inkey List",
		[
			"Water", "Glycolic Acid", "Propanediol", "Hamamelis Virginiana (Witch Hazel) Water", "Sodium Hydroxide", "Butylene Glycol", 	"Phenoxyethanol", "Alcohol", "PPG-26-Buteth-26", "Betaine", "PEG-40 Hydrogenated Castor Oil", "Boerhavia Diffusa Root Extract", "Ethylhexylglycerin", "Trisodium Ethylenediamine Disuccinate"
		]
	],
	["C E FERULIC® WITH 15% L-ASCORBIC ACID","SkinCeuticals",
	  [
			"water", "ethoxydiglycol", "ascorbic acid", "glycerin", "propylene glycol", "laureth-23", "phenoxyethanol", "tocopherol", 		"triethanolamine", "ferulic acid", "panthenol", "sodium hyaluronate"
		]
	],
	["Niacinamide 10% + Zinc 1%","The Ordinary",
	  [
			"Water", "Niacinamide", "Pentylene Glycol", "Zinc PCA", "Dimethyl Isosorbide", "Tamarindus Indica Seed Gum", "Xanthan gum","Isoceteth-20", "Ethoxydiglycol", "Phenoxyethanol", "Chlorphenesin"
		]
	],
	["AHA 30% + BHA 2% Peeling Solution","The Ordinary",
		[
			"Glycolic Acid", "Water", "Aloe Barbadensis Leaf Water", "Sodium Hydroxide", "Daucus Carota Sativa Extract", "Propanediol", 	"Cocamidopropyl Dimethylamine", "Salicylic Acid", "Lactic Acid", "Tartaric Acid", "Citric Acid", "Panthenol", "Sodium 	Hyaluronate Crosspolymer", "Tasmannia Lanceolata Fruit / Leaf Extract", "Glycerin, Pentylene Glycol", "Xanthan gum", 	"Polysorbate 20", "Trisodium Ethylenediamine Disuccinate", "Potassium Sorbate", "Sodium Benzoate", "Ethylhexylglycerin", "1,	2-Hexanediol", "Caprylyl Glycol."
		]
	]
]

def add_products_and_product_ingredients_from_local(products)
	products.each do |p|

		name = p[0]
		brand = p[1]
		p_ings = p[2]
		pr = Product.create(name: name, brand: brand)

		p_ings.each.with_index do |pi, idx|
			p "Adding product ingredients......"
			gr = IngredientGroup.search_by_name(pi).first
			other = IngredientGroup.search_by_name("other").first
			
			ig = ""
			ingredients = Ingredient.all
			if gr.nil?
				ig = Ingredient.create(name: pi, ingredient_group_id: other.id)
			else
				if Ingredient.search_by_name(pi).empty?
					ig = Ingredient.create(name: pi, ingredient_group_id: other.id)
				else
					ig = Ingredient.search_by_name(pi).first
				end
			end

			pri = ProductIngredient.new()
			pri.product_id = pr.id
			pri.ingredient_id = ig.id
			pri.rank = idx
			pri.save
		end
	
	end
end
def add_products_and_product_ingredients_from_csv
	puts "unpacking csv............."
	csv_text = File.read(Rails.root.join('lib', 'assets', 'seed_data', 'Products.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
	puts "---------------------------------------------------------------"
	puts "seed_CR_table......"

	products = []
	rows = []
	csv.each do |row|
		p row
		if row["ingredients"].nil?
			p ""
		else
			row["ingredients"] = row["ingredients"].gsub("[", "").gsub("]", "").split(";").map{|ia| ia =ia.slice(1..-2)}	
		end
		p "::::::::::::::::::::::::"
		p row
		# ingredients_array.each do|ia|
		# 	ia = ia.slice(1..-2)
		# end
		rows << row
		products << row.to_hash
	end
	count = 1
	
	p "Adding products......"

	products.each do |p|
		if p["name"].nil? || p["brand"].nil? || p["ingredients"].nil?
			p ""
		else
			name = p["name"]
			brand = p["brand"]
			p_ings = p["ingredients"]
			pr = Product.create(name: name, brand: brand)
		end

		if p_ings.nil?
			p ""
		
		else
			p_ings.each.with_index do |pi, idx|
				p "Adding product ingredients......"
				gr = IngredientGroup.search_by_name(pi).first
				other = IngredientGroup.search_by_name("other").first
				
				ig = ""
				ingredients = Ingredient.all
				if gr.nil?
					ig = Ingredient.create(name: pi, ingredient_group_id: other.id)
				else
					if Ingredient.search_by_name(pi).empty?
						ig = Ingredient.create(name: pi, ingredient_group_id: other.id)
					else
						ig = Ingredient.search_by_name(pi).first
					end
				end

				pri = ProductIngredient.new()
				pri.product_id = pr.id
				pri.ingredient_id = ig.id
				pri.rank = idx
				pri.save
			end
		end
	
	end
end

def add_product_photos
	products = Product.all
	products.each do |product|
		name = product.name
		if name == "SkinCeuticals Triple Lipid Restore 2:4:2"
			name = "SkinCeuticals Triple Lipid Restore"
		elsif name == "AHA/BHA Clarifying Treatment Toner"
			name = "AHA BHA Clarifying Treatment Toner"
		end
#		file =  File.read(Rails.root.join('lib', 'assets', 'seed_data', 'product_photos', "#{name}.png"))
		file =  Rails.root.join('lib', 'assets', 'seed_data', 'product_photos', "#{name}.png")

		# p "#{name}===>#{file}"
		product.photo.attach(io: File.open(file), filename: "#{product.name}.png", content_type: 'image/png')
	end

	
end



add_ingredient_groups_and_ingredients(ing_grp)
add_products_and_product_ingredients_from_local(products)
add_products_and_product_ingredients_from_csv
add_product_photos
unpack_csv_and_seed_CR_table




