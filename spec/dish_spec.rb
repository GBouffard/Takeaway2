require 'dish'

describe Dish do
  dish = Dish.new('pizza', 5)
  it 'has a name' do
    expect(dish.name).to eq 'pizza'
  end
  it 'has a price' do
    expect(dish.price).to eq 5
  end
end
