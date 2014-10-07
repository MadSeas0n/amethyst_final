class Cart < ActiveRecord::Base
	has_many :cart_items, dependent: :destroy
	has_many :sold_items

	def add_item(item_id)
		current_item = cart_items.find_by(item_id: item_id)
		if current_item
			current_item.quantity +=1
		else
			current_item = cart_items.build(item_id: item_id)
		end
		current_item
	end

	def total_price
		cart_items.to_a.sum {|i| i.total_price}
	end

end
