class CashRegister
    attr_accessor :total, :discount, :items, :price

    def initialize(disc = 0)
        @total = 0
        @discount = disc
        @items = []
    end
    def add_item(title, price, q = 1)
        q.times do 
            self.items.push(title)
            self.total += price
        end
        @price = price * q
    end
    def apply_discount
        if self.discount != 0
          discount_as_percent = (100.0 - self.discount.to_f) / 100
          self.total = (self.total * discount_as_percent).to_i
          "After the discount, the total comes to $#{self.total}."
        else
          "There is no discount to apply."
        end
      end
    def void_last_transaction
        self.total -= self.price
    end
end
