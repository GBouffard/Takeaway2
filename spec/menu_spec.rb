require 'menu'

describe Menu do
  let(:menu) { Menu.new }
  let(:pizza) { double :dish, name: 'pizza', price: 5, quantity: 22 }
  let(:burger) { double :dish, name: 'burger', price: 4, quantity: 40 }
  let(:chips) { double :dish, name: 'chips', price: 1, quantity: 60 }

  it 'has an empty list of dishes when initialized' do
    expect(menu.list).to eq({})
  end

  it 'has a list of available dishes to choose from' do
    menu.add_dish(pizza)
    menu.add_dish(burger)
    menu.add_dish(chips)
    expect(menu.list).to eq('pizza' => [5, 22], 'burger' => [4, 40], 'chips' => [1, 60])
  end

  it 'can update an existing dish with a new price and a new quantity' do
    menu.add_dish(pizza)
    menu.add_dish(pizza)
    expect(menu.list).to eq('pizza' => [5, 44])
  end
end
