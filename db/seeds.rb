#coding: UTF-8

category_1 = Category.create(:name => "Pizzetas", :picture => "/images/categories/pizzetas.jpg")
category_2 = Category.create(:name => "Ensaladas", :picture => "/images/categories/ensaladas.jpg")
category_3 = Category.create(:name => "Bebidas", :picture => "/images/categories/bebidas.jpg")

# pizzas...

Product.create(:name=> "Pizzeta Don Zoilo",
               :description => "Mozzarella, salsa de tomates, provolone artesanal, tomates secos hidratados en vino blanco y tomillo fresco.",
               :price => 295,
               :category => category_1
)

Product.create(:name=> "Pizzeta Bugs Bunny",
               :description => "Mozzarella, salsa de tomates, pollo braseado, zanahorias confitadas en azúcar rubia, vino blanco, miel, manteca y perejil fresco.",
               :price => 310,
               :category => category_1
)

Product.create(:name=> "Pizzeta de hongos",
               :description => "Muzzarella, salsa de tomates frescos y hongos champigñones.",
               :price => 285,
               :category => category_1
)

Product.create(:name=> "Pizzeta cuatro di formaggio",
               :description => "Muzzarella, salsa de tomates frescos, parmesano, roquefort y cheddar.",
               :price => 295,
               :category => category_1
)

Product.create(:name=> "Pizzeta mafiosa",
               :description => "Muzzarella, salsa de tomates frescos, peperoni y aceite de oliva.",
               :price => 285,
               :category => category_1
)

# ensaladas ...

Product.create(:name=> "Ensalada di mare",
               :description => "Selección de verdes (rúcula, lechuga crespa, lechuga mora, albahaca fresca), salmón ahumado, alcaparras, mozzarella de bola y alineo de aceite de oliva y jugo de lima.",
               :price => 190,
               :category => category_2
)

Product.create(:name=> "Ensalada de la huerta",
               :description => "Mix de verdes, tomates cherry, cebollines glaseados y muzzarella bola.",
               :price => 150,
               :category => category_2
)

Product.create(:name=> "Ensalada capresse",
               :description => "Selección de verdes (rúcula, lechuga crespa, lechuga mora, albahaca fresca), mozzarella de bola y tomates frescos alineados con aceite de oliva.",
               :price => 170,
               :category => category_2
)

Product.create(:name=> "Ensalada Thai",
               :description => "Selección de verdes, pollo macerado en aceite de oliva, soja y jengibre con sésamo tostado, lascas de parmesano y reducción de aceto balsámico y miel.",
               :price => 185,
               :category => category_2
)

# bebidas ...

Product.create(:name=> "Refresco 600 cc",
               :price => 45,
               :category => category_3
)

Product.create(:name=> "Cerveza Zillertal 1 L",
               :price => 105,
               :category => category_3
)

Product.create(:name=> "Cerveza Stella Artois 1 L",
               :price => 105,
               :category => category_3
)



Business.create(:name=> "Mario's Pizzas",
                :logo => "/images/logo.png",
                :phone => "2902 14 59",
                :address => "18 de julio 2321",
                :email => "marios@pizzas.com"
)
