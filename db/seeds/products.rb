product_01 = Product.new()

lp = LearningPlan.find(1)

product_01.buyable = lp

product_01.save
