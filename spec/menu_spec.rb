require 'menu'

describe Menu do
  let(:menu) { Menu.new }
  let(:pizza) { double :dish, name: 'pizza', price: 5 }
  let(:burger) { double :dish, name: 'burger', price: 4 }
  let(:chips) { double :dish, name: 'chips', price: 1 }

  it 'has an empty list of dishes when initialized' do
    expect(menu.list).to eq({})
  end

  it 'has a list of available dishes to choose from' do
    menu.add_dish(pizza)
    menu.add_dish(burger)
    menu.add_dish(chips)
    expect(menu.list).to eq('pizza' => 5, 'burger' => 4, 'chips' => 1)
  end
end
