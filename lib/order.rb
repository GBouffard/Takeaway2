class Order
  attr_reader :my_order, :total, :wtf
  def initialize
    @my_order = {}
    @total = 0
    @wtf = []
  end

  def add_to_cart(from_menu, dish, quantity)
    if from_menu.list.key?(dish)
      actual_q = from_menu.list[dish].last
      if quantity > actual_q
        fail "Sorry you cannot add #{quantity} #{dish}(s). There are only #{actual_q} #{dish}(s) left!"
      else
        # I did that just because I have my sum not working and I'm really surprised at these results!!
        @wtf << 'yo'
        # expected: ["yo"]
        # got: ["yo", "yo", "yo"]
        # WHAT??? THERE IS NO LOOP IN HERE !!!!
        # if I remove everything in that method and only this line @wtf << 'yo', it returns 'yo' 5 times!
        # WWWHHHYYYY ? It drives me nuts!!
        my_order[dish] = quantity
      end
    else
      fail "What? #{dish}? We don\'t have that!!"
    end
  end

  # def calculate (price, quantity)
  #   @total += (price * quantity)
  #   (from_menu.list[dish].first * quantity)
  # end
end
