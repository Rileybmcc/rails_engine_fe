class RailsEngineFacade

  def self.every_merchant
    json = RailsEngineService.all_merchants
    json[:data].map { |merchant| Merchant.new(merchant[:attributes], merchant[:id]) }
  end

  def self.this_merchant(merch_id)
    json = RailsEngineService.a_merchant(merch_id)
    Merchant.new(json[:data][:attributes], json[:data][:id])
  end

  def self.merchant_items(merchant_id)
    json = RailsEngineService.merchant_items(merchant_id)
    json[:data].map { |item| Item.new(item[:attributes], item[:id]) }
  end

  def self.this_item(item_id)
    json = RailsEngineService.an_item(item_id.to_i)
    Item.new(json[:data][:attributes], json[:data][:id])
  end

  def self.all_items
    json = RailsEngineService.items
    json[:data].map { |item| Item.new(item[:attributes], item[:id]) }
  end

  def self.search_for(search_params)
    json = RailsEngineService.merchant_by_partial(search_params)
require "pry"; binding.pry
    Merchant.new(json[:data][:attributes], json[:data][:id])
  end

end
