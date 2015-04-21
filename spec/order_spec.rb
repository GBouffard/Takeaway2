require 'Order'

describe Order do
  order = Order.new
  let(:menu) { double :menu, list: { 'pizza' => [5, 2], 'burger' => [4, 40], 'chips' => [1, 60] } }

  it 'starts with an empty list when created' do
    expect(order.my_order).to eq({})
  end

  it 'starts with a total amount of 0 when created' do
    expect(order.total).to eq(0)
  end

  it 'can add dishes and quantities from the menu into a new order' do
    order.add_to_cart(menu, 'burger', 3)
    order.add_to_cart(menu, 'chips', 3)
    expect(order.my_order).to eq('burger' => 3, 'chips' => 3)
  end

  it 'cannot accept dishes which are not part of the menu' do
    expect { order.add_to_cart(menu, 'unicorn steak', 3) }.to raise_error
    'What? unicorn steak? We don\'t have that!!'
  end

  it 'cannot adds more quantity of a dish than is actually available' do
    expect { order.add_to_cart(menu, 'pizza', 4) }.to raise_error
    'Sorry you cannot add 4 pizza(s). There are only 2 pizza(s) left!'
  end

  it 'calculates and can show the total price as we add orders along' do
    order.add_to_cart(menu, 'burger', 3)
    # order.add_to_cart(menu, 'chips', 3)
    expect(order.wtf).to eq ['yo']
  end
end
