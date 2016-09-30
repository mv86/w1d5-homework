def pet_shop_name(shop_name)
  shop_name[:name]
end

def total_cash(ammount)
  ammount[:admin][:total_cash]
end

def add_or_remove_cash(ammount, cash)
  ammount[:admin][:total_cash] += cash
end

def pets_sold(pets)
  pets[:admin][:pets_sold]
end

def increase_pets_sold(pets, pets_sold)
  pets[:admin][:pets_sold] += pets_sold
end
