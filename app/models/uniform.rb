class Uniform < ApplicationRecord

    def total_inventory_value
        quantity * price
    end
end
