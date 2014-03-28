#coding: UTF-8

category_1 = Category.create(:name => "Pizzetas", :picture => "/images/categories/pizzetas.jpg")
category_2 = Category.create(:name => "Ensaladas", :picture => "/images/categories/ensaladas.jpg")


Product.create(:name=> "Pizzeta Don Zoilo",
               :description => "Mozzarella, salsa de tomates, provolone artesanal, tomates secos hidratados en vino blanco y tomillo fresco.",
               :price => 295,
               :category => category_1
)

Product.create(:name=> "Ensalada di mare",
               :description => "Selección de verdes (rúcula, lechuga crespa, lechuga mora, albahaca fresca), salmón ahumado, alcaparras, mozzarella de bola y alineo de aceite de oliva y jugo de lima.",
               :price => 190,
               :category => category_2
)