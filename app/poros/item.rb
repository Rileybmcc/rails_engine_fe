class Item
  attr_reader :name,
              :description,
              :unit_price,
              :merchant_id,
              :id

  def initialize(attributes, item_id)
    @name = attributes[:name]
    @description = attributes[:description]
    @unit_price = attributes[:unit_price]
    @merchant_id = attributes[:merchant_id]
    @id = item_id.to_i
  end


end
