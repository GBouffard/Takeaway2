class Menu
  attr_reader :list
  def initialize
    @list = {}
  end

  def add_dish(dish)
    if list.key?(dish.name)
      new_q = list[dish.name].last + dish.quantity
      list[dish.name] = [dish.price, new_q]
    else
      list[dish.name] = [dish.price, dish.quantity]
    end
  end
end
