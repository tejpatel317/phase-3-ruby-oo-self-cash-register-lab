class CashRegister

    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount = 0)
        total = 0
        @total=total
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_item = price*quantity
        self.total += price * quantity
        quantity.times do 
            self.items.push(title)
        end
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = (self.total - (self.total*(self.discount/100.0.to_f))).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_item
    end
end
