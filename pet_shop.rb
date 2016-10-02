def pet_shop_name(shop_name)
  shop_name[:name]
end


def total_cash(ammount)
  ammount[:admin][:total_cash]
end


def add_or_remove_cash(ammount, cash)
  ammount[:admin][:total_cash] += cash
end


def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end


def stock_count(pet_shop)
  pet_shop[:pets].count
end


def pets_by_breed(pet_shop, breed)
  
  pet_count = []

  for pet in pet_shop[:pets]
    pet_count << pet if pet[:breed] == breed
  end

  return pet_count

end


def find_pet_by_name(pet_shop, pet_name)

  pets = []

  for pet in pet_shop[:pets]
    pets << pet if pet[:name] == pet_name
  end

  return pets[0]

end


def remove_pet_by_name(pet_shop, pet_name) 
  
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
  
end
  

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end


def customer_pet_count(customer)
  customer[:pets].length
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end