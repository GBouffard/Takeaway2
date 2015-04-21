require 'dish'

describe Dish do
  dish = Dish.new('pizza', 5, 22)
  it 'has a name' do
    expect(dish.name).to eq 'pizza'
  end

  it 'has a price' do
    expect(dish.price).to eq 5
  end

  it 'has an initial quantity (or refers to quantity to add to an existing quantity)' do
    expect(dish.quantity).to eq 22
  end
end
